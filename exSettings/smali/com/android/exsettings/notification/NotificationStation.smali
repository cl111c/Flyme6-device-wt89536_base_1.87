.class public Lcom/android/exsettings/notification/NotificationStation;
.super Lcom/android/exsettings/SettingsPreferenceFragment;
.source "NotificationStation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/exsettings/notification/NotificationStation$NotificationHistoryAdapter;,
        Lcom/android/exsettings/notification/NotificationStation$HistoricalNotificationInfo;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static bitmap:Landroid/graphics/Bitmap;


# instance fields
.field private mAdapter:Lcom/android/exsettings/notification/NotificationStation$NotificationHistoryAdapter;

.field private mContext:Landroid/content/Context;

.field private mListener:Landroid/service/notification/NotificationListenerService;

.field private mNoMan:Landroid/app/INotificationManager;

.field private final mNotificationSorter:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/android/exsettings/notification/NotificationStation$HistoricalNotificationInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mPm:Landroid/content/pm/PackageManager;

.field private mRefreshListRunnable:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 69
    const-class v0, Lcom/android/exsettings/notification/NotificationStation;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/exsettings/notification/NotificationStation;->TAG:Ljava/lang/String;

    .line 190
    const/4 v0, 0x0

    sput-object v0, Lcom/android/exsettings/notification/NotificationStation;->bitmap:Landroid/graphics/Bitmap;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/android/exsettings/SettingsPreferenceFragment;-><init>()V

    .line 88
    new-instance v0, Lcom/android/exsettings/notification/NotificationStation$1;

    invoke-direct {v0, p0}, Lcom/android/exsettings/notification/NotificationStation$1;-><init>(Lcom/android/exsettings/notification/NotificationStation;)V

    iput-object v0, p0, Lcom/android/exsettings/notification/NotificationStation;->mRefreshListRunnable:Ljava/lang/Runnable;

    .line 95
    new-instance v0, Lcom/android/exsettings/notification/NotificationStation$2;

    invoke-direct {v0, p0}, Lcom/android/exsettings/notification/NotificationStation$2;-><init>(Lcom/android/exsettings/notification/NotificationStation;)V

    iput-object v0, p0, Lcom/android/exsettings/notification/NotificationStation;->mListener:Landroid/service/notification/NotificationListenerService;

    .line 115
    new-instance v0, Lcom/android/exsettings/notification/NotificationStation$3;

    invoke-direct {v0, p0}, Lcom/android/exsettings/notification/NotificationStation$3;-><init>(Lcom/android/exsettings/notification/NotificationStation;)V

    iput-object v0, p0, Lcom/android/exsettings/notification/NotificationStation;->mNotificationSorter:Ljava/util/Comparator;

    .line 335
    return-void
.end method

.method static synthetic access$000(Lcom/android/exsettings/notification/NotificationStation;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/exsettings/notification/NotificationStation;

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/android/exsettings/notification/NotificationStation;->refreshList()V

    return-void
.end method

.method static synthetic access$100(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;
    .param p1, "x1"    # [Ljava/lang/Object;

    .prologue
    .line 68
    invoke-static {p0, p1}, Lcom/android/exsettings/notification/NotificationStation;->logd(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/exsettings/notification/NotificationStation;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/android/exsettings/notification/NotificationStation;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/exsettings/notification/NotificationStation;->mRefreshListRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/exsettings/notification/NotificationStation;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/exsettings/notification/NotificationStation;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 68
    invoke-direct {p0, p1}, Lcom/android/exsettings/notification/NotificationStation;->startApplicationDetailsActivity(Ljava/lang/String;)V

    return-void
.end method

.method private static drawableToBitamp(Landroid/graphics/drawable/Drawable;)V
    .locals 7
    .param p0, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v6, 0x0

    .line 192
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    .line 193
    .local v3, "w":I
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    .line 194
    .local v2, "h":I
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v5, "Drawable?Bitmap"

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 195
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_0

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 197
    .local v1, "config":Landroid/graphics/Bitmap$Config;
    :goto_0
    invoke-static {v3, v2, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    sput-object v4, Lcom/android/exsettings/notification/NotificationStation;->bitmap:Landroid/graphics/Bitmap;

    .line 198
    new-instance v0, Landroid/graphics/Canvas;

    sget-object v4, Lcom/android/exsettings/notification/NotificationStation;->bitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 199
    .local v0, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {p0, v6, v6, v3, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 200
    invoke-virtual {p0, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 201
    return-void

    .line 195
    .end local v0    # "canvas":Landroid/graphics/Canvas;
    .end local v1    # "config":Landroid/graphics/Bitmap$Config;
    :cond_0
    sget-object v1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    goto :goto_0
.end method

.method private static getAlphaBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 8
    .param p0, "mBitmap"    # Landroid/graphics/Bitmap;
    .param p1, "mColor"    # I

    .prologue
    const/4 v7, 0x0

    .line 204
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v5, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 206
    .local v1, "mAlphaBitmap":Landroid/graphics/Bitmap;
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 207
    .local v2, "mCanvas":Landroid/graphics/Canvas;
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    .line 209
    .local v3, "mPaint":Landroid/graphics/Paint;
    invoke-virtual {v3, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 210
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->extractAlpha()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 211
    .local v0, "alphaBitmap":Landroid/graphics/Bitmap;
    invoke-virtual {v2, v0, v7, v7, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 213
    return-object v1
.end method

.method private getResourcesForUserPackage(Ljava/lang/String;I)Landroid/content/res/Resources;
    .locals 5
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 278
    const/4 v1, 0x0

    .line 280
    .local v1, "r":Landroid/content/res/Resources;
    if-eqz p1, :cond_1

    .line 282
    const/4 v2, -0x1

    if-ne p2, v2, :cond_0

    .line 283
    const/4 p2, 0x0

    .line 285
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/android/exsettings/notification/NotificationStation;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v2, p1, p2}, Landroid/content/pm/PackageManager;->getResourcesForApplicationAsUser(Ljava/lang/String;I)Landroid/content/res/Resources;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    move-object v2, v1

    .line 293
    :goto_1
    return-object v2

    .line 286
    :catch_0
    move-exception v0

    .line 287
    .local v0, "ex":Landroid/content/pm/PackageManager$NameNotFoundException;
    sget-object v2, Lcom/android/exsettings/notification/NotificationStation;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Icon package not found: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 288
    const/4 v2, 0x0

    goto :goto_1

    .line 291
    .end local v0    # "ex":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_1
    iget-object v2, p0, Lcom/android/exsettings/notification/NotificationStation;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    goto :goto_0
.end method

.method private loadIconDrawable(Ljava/lang/String;II)Landroid/graphics/drawable/Drawable;
    .locals 6
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "resId"    # I

    .prologue
    const/4 v3, 0x0

    .line 319
    invoke-direct {p0, p1, p2}, Lcom/android/exsettings/notification/NotificationStation;->getResourcesForUserPackage(Ljava/lang/String;I)Landroid/content/res/Resources;

    move-result-object v1

    .line 320
    .local v1, "r":Landroid/content/res/Resources;
    if-nez p3, :cond_0

    move-object v2, v3

    .line 332
    :goto_0
    return-object v2

    .line 325
    :cond_0
    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {v1, p3, v2}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 326
    :catch_0
    move-exception v0

    .line 327
    .local v0, "e":Ljava/lang/RuntimeException;
    sget-object v4, Lcom/android/exsettings/notification/NotificationStation;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Icon not found in "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-eqz p1, :cond_1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :goto_1
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ": "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v2, v3

    .line 332
    goto :goto_0

    .line 327
    :cond_1
    const-string v2, "<system>"

    goto :goto_1
.end method

.method private loadNotifications()Ljava/util/List;
    .locals 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/exsettings/notification/NotificationStation$HistoricalNotificationInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 218
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v8

    .line 220
    .local v8, "currentUserId":I
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/notification/NotificationStation;->mNoMan:Landroid/app/INotificationManager;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/notification/NotificationStation;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v20

    invoke-interface/range {v19 .. v20}, Landroid/app/INotificationManager;->getActiveNotifications(Ljava/lang/String;)[Landroid/service/notification/StatusBarNotification;

    move-result-object v4

    .line 222
    .local v4, "active":[Landroid/service/notification/StatusBarNotification;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/notification/NotificationStation;->mNoMan:Landroid/app/INotificationManager;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/notification/NotificationStation;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x32

    invoke-interface/range {v19 .. v21}, Landroid/app/INotificationManager;->getHistoricalNotifications(Ljava/lang/String;I)[Landroid/service/notification/StatusBarNotification;

    move-result-object v9

    .line 225
    .local v9, "dismissed":[Landroid/service/notification/StatusBarNotification;
    new-instance v16, Ljava/util/ArrayList;

    array-length v0, v4

    move/from16 v19, v0

    array-length v0, v9

    move/from16 v20, v0

    add-int v19, v19, v20

    move-object/from16 v0, v16

    move/from16 v1, v19

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 229
    .local v16, "list":Ljava/util/List;, "Ljava/util/List<Lcom/android/exsettings/notification/NotificationStation$HistoricalNotificationInfo;>;"
    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v5, v0, [[Landroid/service/notification/StatusBarNotification;

    const/16 v19, 0x0

    aput-object v4, v5, v19

    const/16 v19, 0x1

    aput-object v9, v5, v19

    .local v5, "arr$":[[Landroid/service/notification/StatusBarNotification;
    array-length v14, v5

    .local v14, "len$":I
    const/4 v11, 0x0

    .local v11, "i$":I
    move v12, v11

    .end local v5    # "arr$":[[Landroid/service/notification/StatusBarNotification;
    .end local v11    # "i$":I
    .end local v14    # "len$":I
    .local v12, "i$":I
    :goto_0
    if-ge v12, v14, :cond_a

    aget-object v17, v5, v12

    .line 230
    .local v17, "resultset":[Landroid/service/notification/StatusBarNotification;
    move-object/from16 v6, v17

    .local v6, "arr$":[Landroid/service/notification/StatusBarNotification;
    array-length v15, v6

    .local v15, "len$":I
    const/4 v11, 0x0

    .end local v12    # "i$":I
    .restart local v11    # "i$":I
    :goto_1
    if-ge v11, v15, :cond_9

    aget-object v18, v6, v11

    .line 231
    .local v18, "sbn":Landroid/service/notification/StatusBarNotification;
    new-instance v13, Lcom/android/exsettings/notification/NotificationStation$HistoricalNotificationInfo;

    const/16 v19, 0x0

    move-object/from16 v0, v19

    invoke-direct {v13, v0}, Lcom/android/exsettings/notification/NotificationStation$HistoricalNotificationInfo;-><init>(Lcom/android/exsettings/notification/NotificationStation$1;)V

    .line 232
    .local v13, "info":Lcom/android/exsettings/notification/NotificationStation$HistoricalNotificationInfo;
    invoke-virtual/range {v18 .. v18}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    iput-object v0, v13, Lcom/android/exsettings/notification/NotificationStation$HistoricalNotificationInfo;->pkg:Ljava/lang/String;

    .line 233
    invoke-virtual/range {v18 .. v18}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v19

    move/from16 v0, v19

    iput v0, v13, Lcom/android/exsettings/notification/NotificationStation$HistoricalNotificationInfo;->user:I

    .line 234
    iget-object v0, v13, Lcom/android/exsettings/notification/NotificationStation$HistoricalNotificationInfo;->pkg:Ljava/lang/String;

    move-object/from16 v19, v0

    iget v0, v13, Lcom/android/exsettings/notification/NotificationStation$HistoricalNotificationInfo;->user:I

    move/from16 v20, v0

    invoke-virtual/range {v18 .. v18}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v21

    move-object/from16 v0, v21

    iget v0, v0, Landroid/app/Notification;->icon:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    invoke-direct {v0, v1, v2, v3}, Lcom/android/exsettings/notification/NotificationStation;->loadIconDrawable(Ljava/lang/String;II)Landroid/graphics/drawable/Drawable;

    move-result-object v19

    move-object/from16 v0, v19

    iput-object v0, v13, Lcom/android/exsettings/notification/NotificationStation$HistoricalNotificationInfo;->icon:Landroid/graphics/drawable/Drawable;

    .line 236
    iget-object v0, v13, Lcom/android/exsettings/notification/NotificationStation$HistoricalNotificationInfo;->icon:Landroid/graphics/drawable/Drawable;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/exsettings/notification/NotificationStation;->drawableToBitamp(Landroid/graphics/drawable/Drawable;)V

    .line 237
    sget-object v19, Lcom/android/exsettings/notification/NotificationStation;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual/range {p0 .. p0}, Lcom/android/exsettings/notification/NotificationStation;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x7f0e0061

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getColor(I)I

    move-result v20

    invoke-static/range {v19 .. v20}, Lcom/android/exsettings/notification/NotificationStation;->getAlphaBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 238
    .local v7, "bit_icon":Landroid/graphics/Bitmap;
    new-instance v19, Landroid/graphics/drawable/BitmapDrawable;

    move-object/from16 v0, v19

    invoke-direct {v0, v7}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    move-object/from16 v0, v19

    iput-object v0, v13, Lcom/android/exsettings/notification/NotificationStation$HistoricalNotificationInfo;->icon:Landroid/graphics/drawable/Drawable;

    .line 240
    iget-object v0, v13, Lcom/android/exsettings/notification/NotificationStation$HistoricalNotificationInfo;->pkg:Ljava/lang/String;

    move-object/from16 v19, v0

    iget v0, v13, Lcom/android/exsettings/notification/NotificationStation$HistoricalNotificationInfo;->user:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/android/exsettings/notification/NotificationStation;->loadPackageIconDrawable(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v19

    move-object/from16 v0, v19

    iput-object v0, v13, Lcom/android/exsettings/notification/NotificationStation$HistoricalNotificationInfo;->pkgicon:Landroid/graphics/drawable/Drawable;

    .line 241
    iget-object v0, v13, Lcom/android/exsettings/notification/NotificationStation$HistoricalNotificationInfo;->pkg:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/exsettings/notification/NotificationStation;->loadPackageName(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v19

    move-object/from16 v0, v19

    iput-object v0, v13, Lcom/android/exsettings/notification/NotificationStation$HistoricalNotificationInfo;->pkgname:Ljava/lang/CharSequence;

    .line 242
    invoke-virtual/range {v18 .. v18}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v19

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    move-object/from16 v19, v0

    if-eqz v19, :cond_1

    .line 243
    invoke-virtual/range {v18 .. v18}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v19

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    move-object/from16 v19, v0

    const-string v20, "android.title"

    invoke-virtual/range {v19 .. v20}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    iput-object v0, v13, Lcom/android/exsettings/notification/NotificationStation$HistoricalNotificationInfo;->title:Ljava/lang/CharSequence;

    .line 245
    iget-object v0, v13, Lcom/android/exsettings/notification/NotificationStation$HistoricalNotificationInfo;->title:Ljava/lang/CharSequence;

    move-object/from16 v19, v0

    if-eqz v19, :cond_0

    const-string v19, ""

    iget-object v0, v13, Lcom/android/exsettings/notification/NotificationStation$HistoricalNotificationInfo;->title:Ljava/lang/CharSequence;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_1

    .line 246
    :cond_0
    invoke-virtual/range {v18 .. v18}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v19

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    move-object/from16 v19, v0

    const-string v20, "android.text"

    invoke-virtual/range {v19 .. v20}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    iput-object v0, v13, Lcom/android/exsettings/notification/NotificationStation$HistoricalNotificationInfo;->title:Ljava/lang/CharSequence;

    .line 250
    :cond_1
    iget-object v0, v13, Lcom/android/exsettings/notification/NotificationStation$HistoricalNotificationInfo;->title:Ljava/lang/CharSequence;

    move-object/from16 v19, v0

    if-eqz v19, :cond_2

    const-string v19, ""

    iget-object v0, v13, Lcom/android/exsettings/notification/NotificationStation$HistoricalNotificationInfo;->title:Ljava/lang/CharSequence;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_3

    .line 251
    :cond_2
    invoke-virtual/range {v18 .. v18}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v19

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iput-object v0, v13, Lcom/android/exsettings/notification/NotificationStation$HistoricalNotificationInfo;->title:Ljava/lang/CharSequence;

    .line 254
    :cond_3
    iget-object v0, v13, Lcom/android/exsettings/notification/NotificationStation$HistoricalNotificationInfo;->title:Ljava/lang/CharSequence;

    move-object/from16 v19, v0

    if-eqz v19, :cond_4

    const-string v19, ""

    iget-object v0, v13, Lcom/android/exsettings/notification/NotificationStation$HistoricalNotificationInfo;->title:Ljava/lang/CharSequence;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_5

    .line 255
    :cond_4
    iget-object v0, v13, Lcom/android/exsettings/notification/NotificationStation$HistoricalNotificationInfo;->pkgname:Ljava/lang/CharSequence;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iput-object v0, v13, Lcom/android/exsettings/notification/NotificationStation$HistoricalNotificationInfo;->title:Ljava/lang/CharSequence;

    .line 257
    :cond_5
    invoke-virtual/range {v18 .. v18}, Landroid/service/notification/StatusBarNotification;->getPostTime()J

    move-result-wide v20

    move-wide/from16 v0, v20

    iput-wide v0, v13, Lcom/android/exsettings/notification/NotificationStation$HistoricalNotificationInfo;->timestamp:J

    .line 258
    invoke-virtual/range {v18 .. v18}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v19

    move-object/from16 v0, v19

    iget v0, v0, Landroid/app/Notification;->priority:I

    move/from16 v19, v0

    move/from16 v0, v19

    iput v0, v13, Lcom/android/exsettings/notification/NotificationStation$HistoricalNotificationInfo;->priority:I

    .line 259
    const-string v19, "   [%d] %s: %s"

    const/16 v20, 0x3

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    iget-wide v0, v13, Lcom/android/exsettings/notification/NotificationStation$HistoricalNotificationInfo;->timestamp:J

    move-wide/from16 v22, v0

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v22

    aput-object v22, v20, v21

    const/16 v21, 0x1

    iget-object v0, v13, Lcom/android/exsettings/notification/NotificationStation$HistoricalNotificationInfo;->pkg:Ljava/lang/String;

    move-object/from16 v22, v0

    aput-object v22, v20, v21

    const/16 v21, 0x2

    iget-object v0, v13, Lcom/android/exsettings/notification/NotificationStation$HistoricalNotificationInfo;->title:Ljava/lang/CharSequence;

    move-object/from16 v22, v0

    aput-object v22, v20, v21

    invoke-static/range {v19 .. v20}, Lcom/android/exsettings/notification/NotificationStation;->logd(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 261
    move-object/from16 v0, v17

    if-ne v0, v4, :cond_8

    const/16 v19, 0x1

    :goto_2
    move/from16 v0, v19

    iput-boolean v0, v13, Lcom/android/exsettings/notification/NotificationStation$HistoricalNotificationInfo;->active:Z

    .line 263
    iget v0, v13, Lcom/android/exsettings/notification/NotificationStation$HistoricalNotificationInfo;->user:I

    move/from16 v19, v0

    const/16 v20, -0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_6

    iget v0, v13, Lcom/android/exsettings/notification/NotificationStation$HistoricalNotificationInfo;->user:I

    move/from16 v19, v0

    move/from16 v0, v19

    if-ne v0, v8, :cond_7

    .line 265
    :cond_6
    move-object/from16 v0, v16

    invoke-interface {v0, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 230
    :cond_7
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_1

    .line 261
    :cond_8
    const/16 v19, 0x0

    goto :goto_2

    .line 229
    .end local v7    # "bit_icon":Landroid/graphics/Bitmap;
    .end local v13    # "info":Lcom/android/exsettings/notification/NotificationStation$HistoricalNotificationInfo;
    .end local v18    # "sbn":Landroid/service/notification/StatusBarNotification;
    :cond_9
    add-int/lit8 v11, v12, 0x1

    move v12, v11

    .end local v11    # "i$":I
    .restart local v12    # "i$":I
    goto/16 :goto_0

    .line 271
    .end local v4    # "active":[Landroid/service/notification/StatusBarNotification;
    .end local v6    # "arr$":[Landroid/service/notification/StatusBarNotification;
    .end local v9    # "dismissed":[Landroid/service/notification/StatusBarNotification;
    .end local v12    # "i$":I
    .end local v15    # "len$":I
    .end local v16    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/android/exsettings/notification/NotificationStation$HistoricalNotificationInfo;>;"
    .end local v17    # "resultset":[Landroid/service/notification/StatusBarNotification;
    :catch_0
    move-exception v10

    .line 272
    .local v10, "e":Landroid/os/RemoteException;
    sget-object v19, Lcom/android/exsettings/notification/NotificationStation;->TAG:Ljava/lang/String;

    const-string v20, "Cannot load Notifications: "

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v0, v1, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 274
    const/16 v16, 0x0

    .end local v10    # "e":Landroid/os/RemoteException;
    :cond_a
    return-object v16
.end method

.method private loadPackageIconDrawable(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;
    .locals 4
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 297
    const/4 v1, 0x0

    .line 299
    .local v1, "icon":Landroid/graphics/drawable/Drawable;
    :try_start_0
    iget-object v2, p0, Lcom/android/exsettings/notification/NotificationStation;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v2, p1}, Landroid/content/pm/PackageManager;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 304
    :goto_0
    return-object v1

    .line 300
    :catch_0
    move-exception v0

    .line 301
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    sget-object v2, Lcom/android/exsettings/notification/NotificationStation;->TAG:Ljava/lang/String;

    const-string v3, "Cannot get application icon"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private loadPackageName(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 4
    .param p1, "pkg"    # Ljava/lang/String;

    .prologue
    .line 309
    :try_start_0
    iget-object v2, p0, Lcom/android/exsettings/notification/NotificationStation;->mPm:Landroid/content/pm/PackageManager;

    const/16 v3, 0x2000

    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 311
    .local v1, "info":Landroid/content/pm/ApplicationInfo;
    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/android/exsettings/notification/NotificationStation;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v2, v1}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p1

    .line 315
    .end local v1    # "info":Landroid/content/pm/ApplicationInfo;
    .end local p1    # "pkg":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p1

    .line 312
    .restart local p1    # "pkg":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 313
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    sget-object v2, Lcom/android/exsettings/notification/NotificationStation;->TAG:Ljava/lang/String;

    const-string v3, "Cannot load package name"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private static varargs logd(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0
    .param p0, "msg"    # Ljava/lang/String;
    .param p1, "args"    # [Ljava/lang/Object;

    .prologue
    .line 188
    return-void
.end method

.method private refreshList()V
    .locals 5

    .prologue
    .line 175
    invoke-direct {p0}, Lcom/android/exsettings/notification/NotificationStation;->loadNotifications()Ljava/util/List;

    move-result-object v0

    .line 176
    .local v0, "infos":Ljava/util/List;, "Ljava/util/List<Lcom/android/exsettings/notification/NotificationStation$HistoricalNotificationInfo;>;"
    if-eqz v0, :cond_0

    .line 177
    const-string v1, "adding %d infos"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/android/exsettings/notification/NotificationStation;->logd(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 178
    iget-object v1, p0, Lcom/android/exsettings/notification/NotificationStation;->mAdapter:Lcom/android/exsettings/notification/NotificationStation$NotificationHistoryAdapter;

    invoke-virtual {v1}, Lcom/android/exsettings/notification/NotificationStation$NotificationHistoryAdapter;->clear()V

    .line 179
    iget-object v1, p0, Lcom/android/exsettings/notification/NotificationStation;->mAdapter:Lcom/android/exsettings/notification/NotificationStation$NotificationHistoryAdapter;

    invoke-virtual {v1, v0}, Lcom/android/exsettings/notification/NotificationStation$NotificationHistoryAdapter;->addAll(Ljava/util/Collection;)V

    .line 180
    iget-object v1, p0, Lcom/android/exsettings/notification/NotificationStation;->mAdapter:Lcom/android/exsettings/notification/NotificationStation$NotificationHistoryAdapter;

    iget-object v2, p0, Lcom/android/exsettings/notification/NotificationStation;->mNotificationSorter:Ljava/util/Comparator;

    invoke-virtual {v1, v2}, Lcom/android/exsettings/notification/NotificationStation$NotificationHistoryAdapter;->sort(Ljava/util/Comparator;)V

    .line 182
    :cond_0
    return-void
.end method

.method private startApplicationDetailsActivity(Ljava/lang/String;)V
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 384
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.APPLICATION_DETAILS_SETTINGS"

    const-string v2, "package"

    const/4 v3, 0x0

    invoke-static {v2, p1, v3}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 386
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/exsettings/notification/NotificationStation;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 387
    invoke-virtual {p0, v0}, Lcom/android/exsettings/notification/NotificationStation;->startActivity(Landroid/content/Intent;)V

    .line 388
    return-void
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 152
    const/16 v0, 0x4b

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x0

    .line 157
    const-string v1, "onActivityCreated(%s)"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Lcom/android/exsettings/notification/NotificationStation;->logd(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 158
    invoke-super {p0, p1}, Lcom/android/exsettings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 160
    invoke-virtual {p0}, Lcom/android/exsettings/notification/NotificationStation;->getListView()Landroid/widget/ListView;

    move-result-object v0

    .line 161
    .local v0, "listView":Landroid/widget/ListView;
    invoke-static {v0, v3}, Lcom/android/exsettings/Utils;->forceCustomPadding(Landroid/view/View;Z)V

    .line 163
    new-instance v1, Lcom/android/exsettings/notification/NotificationStation$NotificationHistoryAdapter;

    iget-object v2, p0, Lcom/android/exsettings/notification/NotificationStation;->mContext:Landroid/content/Context;

    invoke-direct {v1, p0, v2}, Lcom/android/exsettings/notification/NotificationStation$NotificationHistoryAdapter;-><init>(Lcom/android/exsettings/notification/NotificationStation;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/exsettings/notification/NotificationStation;->mAdapter:Lcom/android/exsettings/notification/NotificationStation$NotificationHistoryAdapter;

    .line 164
    iget-object v1, p0, Lcom/android/exsettings/notification/NotificationStation;->mAdapter:Lcom/android/exsettings/notification/NotificationStation$NotificationHistoryAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 165
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 6
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 126
    const-string v1, "onAttach(%s)"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/android/exsettings/notification/NotificationStation;->logd(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 127
    invoke-super {p0, p1}, Lcom/android/exsettings/SettingsPreferenceFragment;->onAttach(Landroid/app/Activity;)V

    .line 128
    iput-object p1, p0, Lcom/android/exsettings/notification/NotificationStation;->mContext:Landroid/content/Context;

    .line 129
    iget-object v1, p0, Lcom/android/exsettings/notification/NotificationStation;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/exsettings/notification/NotificationStation;->mPm:Landroid/content/pm/PackageManager;

    .line 130
    const-string v1, "notification"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/exsettings/notification/NotificationStation;->mNoMan:Landroid/app/INotificationManager;

    .line 133
    :try_start_0
    iget-object v1, p0, Lcom/android/exsettings/notification/NotificationStation;->mListener:Landroid/service/notification/NotificationListenerService;

    iget-object v2, p0, Lcom/android/exsettings/notification/NotificationStation;->mContext:Landroid/content/Context;

    new-instance v3, Landroid/content/ComponentName;

    iget-object v4, p0, Lcom/android/exsettings/notification/NotificationStation;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/service/notification/NotificationListenerService;->registerAsSystemService(Landroid/content/Context;Landroid/content/ComponentName;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 138
    :goto_0
    return-void

    .line 135
    :catch_0
    move-exception v0

    .line 136
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/android/exsettings/notification/NotificationStation;->TAG:Ljava/lang/String;

    const-string v2, "Cannot register listener"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onDetach()V
    .locals 3

    .prologue
    .line 143
    :try_start_0
    iget-object v1, p0, Lcom/android/exsettings/notification/NotificationStation;->mListener:Landroid/service/notification/NotificationListenerService;

    invoke-virtual {v1}, Landroid/service/notification/NotificationListenerService;->unregisterAsSystemService()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 147
    :goto_0
    invoke-super {p0}, Lcom/android/exsettings/SettingsPreferenceFragment;->onDetach()V

    .line 148
    return-void

    .line 144
    :catch_0
    move-exception v0

    .line 145
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/android/exsettings/notification/NotificationStation;->TAG:Ljava/lang/String;

    const-string v2, "Cannot unregister listener"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 169
    const-string v0, "onResume()"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/android/exsettings/notification/NotificationStation;->logd(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 170
    invoke-super {p0}, Lcom/android/exsettings/SettingsPreferenceFragment;->onResume()V

    .line 171
    invoke-direct {p0}, Lcom/android/exsettings/notification/NotificationStation;->refreshList()V

    .line 172
    return-void
.end method
