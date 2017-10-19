.class public Lcom/android/exsettings/ApnSettings;
.super Lcom/android/exsettings/SettingsPreferenceFragment;
.source "ApnSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/exsettings/ApnSettings$2;,
        Lcom/android/exsettings/ApnSettings$RestoreApnProcessHandler;,
        Lcom/android/exsettings/ApnSettings$RestoreApnUiHandler;
    }
.end annotation


# static fields
.field private static final DEFAULTAPN_URI:Landroid/net/Uri;

.field private static final PREFERAPN_URI:Landroid/net/Uri;

.field private static mRestoreDefaultApnMode:Z


# instance fields
.field private mAllowAddingApns:Z

.field private mMobileStateFilter:Landroid/content/IntentFilter;

.field private final mMobileStateReceiver:Landroid/content/BroadcastReceiver;

.field private mMvnoMatchData:Ljava/lang/String;

.field private mMvnoType:Ljava/lang/String;

.field private mRestoreApnProcessHandler:Lcom/android/exsettings/ApnSettings$RestoreApnProcessHandler;

.field private mRestoreApnUiHandler:Lcom/android/exsettings/ApnSettings$RestoreApnUiHandler;

.field private mRestoreDefaultApnThread:Landroid/os/HandlerThread;

.field private mSelectedKey:Ljava/lang/String;

.field private mSubId:I

.field private mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

.field private mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

.field private mUm:Landroid/os/UserManager;

.field private mUnavailable:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 100
    const-string v0, "content://telephony/carriers/restore"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/exsettings/ApnSettings;->DEFAULTAPN_URI:Landroid/net/Uri;

    .line 101
    const-string v0, "content://telephony/carriers/preferapn"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/exsettings/ApnSettings;->PREFERAPN_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/android/exsettings/SettingsPreferenceFragment;-><init>()V

    .line 124
    new-instance v0, Lcom/android/exsettings/ApnSettings$1;

    invoke-direct {v0, p0}, Lcom/android/exsettings/ApnSettings$1;-><init>(Lcom/android/exsettings/ApnSettings;)V

    iput-object v0, p0, Lcom/android/exsettings/ApnSettings;->mMobileStateReceiver:Landroid/content/BroadcastReceiver;

    .line 546
    return-void
.end method

.method static synthetic access$000(Landroid/content/Intent;)Lcom/android/internal/telephony/PhoneConstants$DataState;
    .locals 1
    .param p0, "x0"    # Landroid/content/Intent;

    .prologue
    .line 67
    invoke-static {p0}, Lcom/android/exsettings/ApnSettings;->getMobileDataState(Landroid/content/Intent;)Lcom/android/internal/telephony/PhoneConstants$DataState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100()Z
    .locals 1

    .prologue
    .line 67
    sget-boolean v0, Lcom/android/exsettings/ApnSettings;->mRestoreDefaultApnMode:Z

    return v0
.end method

.method static synthetic access$102(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 67
    sput-boolean p0, Lcom/android/exsettings/ApnSettings;->mRestoreDefaultApnMode:Z

    return p0
.end method

.method static synthetic access$200(Lcom/android/exsettings/ApnSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/exsettings/ApnSettings;

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/android/exsettings/ApnSettings;->fillList()V

    return-void
.end method

.method static synthetic access$400()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 67
    sget-object v0, Lcom/android/exsettings/ApnSettings;->DEFAULTAPN_URI:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/exsettings/ApnSettings;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 1
    .param p0, "x0"    # Lcom/android/exsettings/ApnSettings;
    .param p1, "x1"    # Landroid/net/Uri;

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lcom/android/exsettings/ApnSettings;->getUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method private addApnToList(Lcom/android/exsettings/ApnPreference;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/android/internal/telephony/uicc/IccRecords;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "pref"    # Lcom/android/exsettings/ApnPreference;
    .param p4, "r"    # Lcom/android/internal/telephony/uicc/IccRecords;
    .param p5, "mvnoType"    # Ljava/lang/String;
    .param p6, "mvnoMatchData"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/exsettings/ApnPreference;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/exsettings/ApnPreference;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/exsettings/ApnPreference;",
            ">;",
            "Lcom/android/internal/telephony/uicc/IccRecords;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 402
    .local p2, "mnoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/exsettings/ApnPreference;>;"
    .local p3, "mvnoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/exsettings/ApnPreference;>;"
    if-eqz p4, :cond_1

    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 403
    invoke-static {p4, p5, p6}, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mvnoMatches(Lcom/android/internal/telephony/uicc/IccRecords;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 404
    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 406
    iput-object p5, p0, Lcom/android/exsettings/ApnSettings;->mMvnoType:Ljava/lang/String;

    .line 407
    iput-object p6, p0, Lcom/android/exsettings/ApnSettings;->mMvnoMatchData:Ljava/lang/String;

    .line 412
    :cond_0
    :goto_0
    return-void

    .line 410
    :cond_1
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private addNewApn()V
    .locals 4

    .prologue
    .line 448
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.INSERT"

    sget-object v3, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 449
    .local v0, "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/exsettings/ApnSettings;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/exsettings/ApnSettings;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v1

    .line 451
    .local v1, "subId":I
    :goto_0
    const-string v2, "sub_id"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 452
    iget-object v2, p0, Lcom/android/exsettings/ApnSettings;->mMvnoType:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/exsettings/ApnSettings;->mMvnoMatchData:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 453
    const-string v2, "mvno_type"

    iget-object v3, p0, Lcom/android/exsettings/ApnSettings;->mMvnoType:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 454
    const-string v2, "mvno_match_data"

    iget-object v3, p0, Lcom/android/exsettings/ApnSettings;->mMvnoMatchData:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 456
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/exsettings/ApnSettings;->startActivity(Landroid/content/Intent;)V

    .line 457
    return-void

    .line 449
    .end local v1    # "subId":I
    :cond_1
    const/4 v1, -0x1

    goto :goto_0
.end method

.method private fillList()V
    .locals 35

    .prologue
    .line 244
    const/16 v21, 0x0

    .line 245
    .local v21, "isSelectedKeyMatch":Z
    const-string v2, "phone"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/exsettings/ApnSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Landroid/telephony/TelephonyManager;

    .line 246
    .local v32, "tm":Landroid/telephony/TelephonyManager;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/exsettings/ApnSettings;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    if-nez v2, :cond_a

    const-string v25, ""

    .line 248
    .local v25, "mccmnc":Ljava/lang/String;
    :goto_0
    const-string v2, "ApnSettings"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "mccmnc = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, v25

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v2, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    new-instance v34, Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "numeric=\""

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v25

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v9, "\" AND user_visible!=0"

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v34

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 253
    .local v34, "where":Ljava/lang/StringBuilder;
    const-string v2, "persist.sys.hideapn"

    const/4 v9, 0x1

    invoke-static {v2, v9}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 254
    const-string v2, "ApnSettings"

    const-string v9, "hiden apn feature enable."

    invoke-static {v2, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    const-string v2, " AND NOT (type=\"ia\" AND (apn=\"\" OR apn IS NULL))"

    move-object/from16 v0, v34

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 259
    invoke-virtual/range {p0 .. p0}, Lcom/android/exsettings/ApnSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v9, 0x7f10002d

    invoke-virtual {v2, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 260
    const-string v2, " AND type <>\"dun\""

    move-object/from16 v0, v34

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 261
    const-string v2, " AND type <>\"ims\""

    move-object/from16 v0, v34

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 264
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/exsettings/ApnSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v9, 0x7f100022

    invoke-virtual {v2, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 265
    const-string v2, " AND type <>\"ims\""

    move-object/from16 v0, v34

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 269
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/exsettings/ApnSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v9, 0x7f10000d

    invoke-virtual {v2, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 270
    invoke-virtual/range {p0 .. p0}, Lcom/android/exsettings/ApnSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v9, 0x7f0a0075

    invoke-virtual {v2, v9}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v18

    .local v18, "arr$":[Ljava/lang/String;
    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v23, v0

    .local v23, "len$":I
    const/16 v20, 0x0

    .local v20, "i$":I
    :goto_1
    move/from16 v0, v20

    move/from16 v1, v23

    if-ge v0, v1, :cond_2

    aget-object v28, v18, v20

    .line 271
    .local v28, "plmn":Ljava/lang/String;
    move-object/from16 v0, v28

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 272
    const-string v2, " and name <>\"CMCC DM\""

    move-object/from16 v0, v34

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 278
    .end local v18    # "arr$":[Ljava/lang/String;
    .end local v20    # "i$":I
    .end local v23    # "len$":I
    .end local v28    # "plmn":Ljava/lang/String;
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/exsettings/ApnSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v9, 0x7f10000e

    invoke-virtual {v2, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 279
    const/16 v27, 0x0

    .line 280
    .local v27, "needHideSupl":Z
    invoke-virtual/range {p0 .. p0}, Lcom/android/exsettings/ApnSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v9, 0x7f0a0076

    invoke-virtual {v2, v9}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v18

    .restart local v18    # "arr$":[Ljava/lang/String;
    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v23, v0

    .restart local v23    # "len$":I
    const/16 v20, 0x0

    .restart local v20    # "i$":I
    :goto_2
    move/from16 v0, v20

    move/from16 v1, v23

    if-ge v0, v1, :cond_3

    aget-object v28, v18, v20

    .line 281
    .restart local v28    # "plmn":Ljava/lang/String;
    move-object/from16 v0, v28

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 282
    const/16 v27, 0x1

    .line 287
    .end local v28    # "plmn":Ljava/lang/String;
    :cond_3
    if-eqz v27, :cond_4

    .line 288
    const-string v2, " and type <>\"supl\""

    move-object/from16 v0, v34

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 293
    .end local v18    # "arr$":[Ljava/lang/String;
    .end local v20    # "i$":I
    .end local v23    # "len$":I
    .end local v27    # "needHideSupl":Z
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/exsettings/ApnSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v9, 0x7f10000f

    invoke-virtual {v2, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 294
    const-string v2, " and type <>\"mms\""

    move-object/from16 v0, v34

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 297
    :cond_5
    const-string v2, "ApnSettings"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "where---"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, v34

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v2, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    invoke-virtual/range {p0 .. p0}, Lcom/android/exsettings/ApnSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    const/4 v9, 0x7

    new-array v4, v9, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string v10, "_id"

    aput-object v10, v4, v9

    const/4 v9, 0x1

    const-string v10, "name"

    aput-object v10, v4, v9

    const/4 v9, 0x2

    const-string v10, "apn"

    aput-object v10, v4, v9

    const/4 v9, 0x3

    const-string v10, "type"

    aput-object v10, v4, v9

    const/4 v9, 0x4

    const-string v10, "mvno_type"

    aput-object v10, v4, v9

    const/4 v9, 0x5

    const-string v10, "mvno_match_data"

    aput-object v10, v4, v9

    const/4 v9, 0x6

    const-string v10, "read_only"

    aput-object v10, v4, v9

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const-string v7, "name ASC"

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v19

    .line 303
    .local v19, "cursor":Landroid/database/Cursor;
    if-eqz v19, :cond_14

    .line 304
    const/4 v6, 0x0

    .line 305
    .local v6, "r":Lcom/android/internal/telephony/uicc/IccRecords;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/exsettings/ApnSettings;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    if-eqz v2, :cond_6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/exsettings/ApnSettings;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    if-eqz v2, :cond_6

    .line 306
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/exsettings/ApnSettings;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/exsettings/ApnSettings;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v9}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v9

    invoke-static {v9}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v9

    const/4 v10, 0x1

    invoke-virtual {v2, v9, v10}, Lcom/android/internal/telephony/uicc/UiccController;->getIccRecords(II)Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v6

    .line 309
    :cond_6
    const-string v2, "apn_list"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/exsettings/ApnSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v17

    check-cast v17, Landroid/preference/PreferenceGroup;

    .line 310
    .local v17, "apnList":Landroid/preference/PreferenceGroup;
    invoke-virtual/range {v17 .. v17}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 312
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 313
    .local v4, "mnoApnList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/exsettings/ApnPreference;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 314
    .local v5, "mvnoApnList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/exsettings/ApnPreference;>;"
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 315
    .local v11, "mnoMmsApnList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/exsettings/ApnPreference;>;"
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 317
    .local v12, "mvnoMmsApnList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/exsettings/ApnPreference;>;"
    invoke-direct/range {p0 .. p0}, Lcom/android/exsettings/ApnSettings;->getSelectedApnKey()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/exsettings/ApnSettings;->mSelectedKey:Ljava/lang/String;

    .line 318
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->moveToFirst()Z

    .line 319
    :goto_3
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v2

    if-nez v2, :cond_10

    .line 320
    const/4 v2, 0x1

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v26

    .line 321
    .local v26, "name":Ljava/lang/String;
    const/4 v2, 0x2

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 322
    .local v16, "apn":Ljava/lang/String;
    const/4 v2, 0x0

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v22

    .line 323
    .local v22, "key":Ljava/lang/String;
    const/4 v2, 0x3

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v33

    .line 324
    .local v33, "type":Ljava/lang/String;
    const/4 v2, 0x4

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 325
    .local v7, "mvnoType":Ljava/lang/String;
    const/4 v2, 0x5

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 326
    .local v8, "mvnoMatchData":Ljava/lang/String;
    const/4 v2, 0x6

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    const/4 v9, 0x1

    if-ne v2, v9, :cond_d

    const/16 v30, 0x1

    .line 327
    .local v30, "readOnly":Z
    :goto_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/exsettings/ApnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const/4 v9, 0x1

    move-object/from16 v0, v19

    invoke-static {v2, v0, v9}, Lcom/android/exsettings/ApnSettings;->getLocalizedName(Landroid/content/Context;Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v24

    .line 328
    .local v24, "localizedName":Ljava/lang/String;
    invoke-static/range {v24 .. v24}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 329
    move-object/from16 v26, v24

    .line 332
    :cond_7
    new-instance v3, Lcom/android/exsettings/ApnPreference;

    invoke-virtual/range {p0 .. p0}, Lcom/android/exsettings/ApnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v3, v2}, Lcom/android/exsettings/ApnPreference;-><init>(Landroid/content/Context;)V

    .line 334
    .local v3, "pref":Lcom/android/exsettings/ApnPreference;
    move/from16 v0, v30

    invoke-virtual {v3, v0}, Lcom/android/exsettings/ApnPreference;->setApnReadOnly(Z)V

    .line 335
    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Lcom/android/exsettings/ApnPreference;->setKey(Ljava/lang/String;)V

    .line 336
    move-object/from16 v0, v26

    invoke-virtual {v3, v0}, Lcom/android/exsettings/ApnPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 337
    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Lcom/android/exsettings/ApnPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 338
    const/4 v2, 0x0

    invoke-virtual {v3, v2}, Lcom/android/exsettings/ApnPreference;->setPersistent(Z)V

    .line 339
    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Lcom/android/exsettings/ApnPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 341
    if-eqz v33, :cond_8

    const-string v2, "mms"

    move-object/from16 v0, v33

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e

    :cond_8
    const/16 v31, 0x1

    .line 342
    .local v31, "selectable":Z
    :goto_5
    move/from16 v0, v31

    invoke-virtual {v3, v0}, Lcom/android/exsettings/ApnPreference;->setSelectable(Z)V

    .line 343
    if-eqz v31, :cond_f

    .line 344
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/exsettings/ApnSettings;->mSelectedKey:Ljava/lang/String;

    if-eqz v2, :cond_9

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/exsettings/ApnSettings;->mSelectedKey:Ljava/lang/String;

    move-object/from16 v0, v22

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 345
    invoke-virtual {v3}, Lcom/android/exsettings/ApnPreference;->setChecked()V

    .line 346
    const/16 v21, 0x1

    .line 347
    const-string v2, "ApnSettings"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "find select key = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/exsettings/ApnSettings;->mSelectedKey:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v2, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    move-object/from16 v2, p0

    .line 349
    invoke-direct/range {v2 .. v8}, Lcom/android/exsettings/ApnSettings;->addApnToList(Lcom/android/exsettings/ApnPreference;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/android/internal/telephony/uicc/IccRecords;Ljava/lang/String;Ljava/lang/String;)V

    .line 353
    :goto_6
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->moveToNext()Z

    goto/16 :goto_3

    .line 246
    .end local v3    # "pref":Lcom/android/exsettings/ApnPreference;
    .end local v4    # "mnoApnList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/exsettings/ApnPreference;>;"
    .end local v5    # "mvnoApnList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/exsettings/ApnPreference;>;"
    .end local v6    # "r":Lcom/android/internal/telephony/uicc/IccRecords;
    .end local v7    # "mvnoType":Ljava/lang/String;
    .end local v8    # "mvnoMatchData":Ljava/lang/String;
    .end local v11    # "mnoMmsApnList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/exsettings/ApnPreference;>;"
    .end local v12    # "mvnoMmsApnList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/exsettings/ApnPreference;>;"
    .end local v16    # "apn":Ljava/lang/String;
    .end local v17    # "apnList":Landroid/preference/PreferenceGroup;
    .end local v19    # "cursor":Landroid/database/Cursor;
    .end local v22    # "key":Ljava/lang/String;
    .end local v24    # "localizedName":Ljava/lang/String;
    .end local v25    # "mccmnc":Ljava/lang/String;
    .end local v26    # "name":Ljava/lang/String;
    .end local v30    # "readOnly":Z
    .end local v31    # "selectable":Z
    .end local v33    # "type":Ljava/lang/String;
    .end local v34    # "where":Ljava/lang/StringBuilder;
    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/exsettings/ApnSettings;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v2

    move-object/from16 v0, v32

    invoke-virtual {v0, v2}, Landroid/telephony/TelephonyManager;->getIccOperatorNumericForData(I)Ljava/lang/String;

    move-result-object v25

    goto/16 :goto_0

    .line 270
    .restart local v18    # "arr$":[Ljava/lang/String;
    .restart local v20    # "i$":I
    .restart local v23    # "len$":I
    .restart local v25    # "mccmnc":Ljava/lang/String;
    .restart local v28    # "plmn":Ljava/lang/String;
    .restart local v34    # "where":Ljava/lang/StringBuilder;
    :cond_b
    add-int/lit8 v20, v20, 0x1

    goto/16 :goto_1

    .line 280
    .restart local v27    # "needHideSupl":Z
    :cond_c
    add-int/lit8 v20, v20, 0x1

    goto/16 :goto_2

    .line 326
    .end local v18    # "arr$":[Ljava/lang/String;
    .end local v20    # "i$":I
    .end local v23    # "len$":I
    .end local v27    # "needHideSupl":Z
    .end local v28    # "plmn":Ljava/lang/String;
    .restart local v4    # "mnoApnList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/exsettings/ApnPreference;>;"
    .restart local v5    # "mvnoApnList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/exsettings/ApnPreference;>;"
    .restart local v6    # "r":Lcom/android/internal/telephony/uicc/IccRecords;
    .restart local v7    # "mvnoType":Ljava/lang/String;
    .restart local v8    # "mvnoMatchData":Ljava/lang/String;
    .restart local v11    # "mnoMmsApnList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/exsettings/ApnPreference;>;"
    .restart local v12    # "mvnoMmsApnList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/exsettings/ApnPreference;>;"
    .restart local v16    # "apn":Ljava/lang/String;
    .restart local v17    # "apnList":Landroid/preference/PreferenceGroup;
    .restart local v19    # "cursor":Landroid/database/Cursor;
    .restart local v22    # "key":Ljava/lang/String;
    .restart local v26    # "name":Ljava/lang/String;
    .restart local v33    # "type":Ljava/lang/String;
    :cond_d
    const/16 v30, 0x0

    goto/16 :goto_4

    .line 341
    .restart local v3    # "pref":Lcom/android/exsettings/ApnPreference;
    .restart local v24    # "localizedName":Ljava/lang/String;
    .restart local v30    # "readOnly":Z
    :cond_e
    const/16 v31, 0x0

    goto :goto_5

    .restart local v31    # "selectable":Z
    :cond_f
    move-object/from16 v9, p0

    move-object v10, v3

    move-object v13, v6

    move-object v14, v7

    move-object v15, v8

    .line 351
    invoke-direct/range {v9 .. v15}, Lcom/android/exsettings/ApnSettings;->addApnToList(Lcom/android/exsettings/ApnPreference;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/android/internal/telephony/uicc/IccRecords;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    .line 355
    .end local v3    # "pref":Lcom/android/exsettings/ApnPreference;
    .end local v7    # "mvnoType":Ljava/lang/String;
    .end local v8    # "mvnoMatchData":Ljava/lang/String;
    .end local v16    # "apn":Ljava/lang/String;
    .end local v22    # "key":Ljava/lang/String;
    .end local v24    # "localizedName":Ljava/lang/String;
    .end local v26    # "name":Ljava/lang/String;
    .end local v30    # "readOnly":Z
    .end local v31    # "selectable":Z
    .end local v33    # "type":Ljava/lang/String;
    :cond_10
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    .line 357
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_11

    .line 358
    move-object v4, v5

    .line 359
    move-object v11, v12

    .line 364
    :cond_11
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v20

    .local v20, "i$":Ljava/util/Iterator;
    :goto_7
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_12

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Landroid/preference/Preference;

    .line 365
    .local v29, "preference":Landroid/preference/Preference;
    move-object/from16 v0, v17

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_7

    .line 369
    .end local v29    # "preference":Landroid/preference/Preference;
    :cond_12
    if-nez v21, :cond_13

    invoke-virtual/range {v17 .. v17}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v2

    if-lez v2, :cond_13

    .line 370
    const/4 v2, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceGroup;->getPreference(I)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Lcom/android/exsettings/ApnPreference;

    .line 371
    .restart local v3    # "pref":Lcom/android/exsettings/ApnPreference;
    invoke-virtual {v3}, Lcom/android/exsettings/ApnPreference;->setChecked()V

    .line 372
    invoke-virtual {v3}, Lcom/android/exsettings/ApnPreference;->getKey()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/exsettings/ApnSettings;->setSelectedApnKey(Ljava/lang/String;)V

    .line 373
    const-string v2, "ApnSettings"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "set key to  "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v3}, Lcom/android/exsettings/ApnPreference;->getKey()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v2, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    .end local v3    # "pref":Lcom/android/exsettings/ApnPreference;
    :cond_13
    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v20

    :goto_8
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_14

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Landroid/preference/Preference;

    .line 377
    .restart local v29    # "preference":Landroid/preference/Preference;
    move-object/from16 v0, v17

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_8

    .line 380
    .end local v4    # "mnoApnList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/exsettings/ApnPreference;>;"
    .end local v5    # "mvnoApnList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/exsettings/ApnPreference;>;"
    .end local v6    # "r":Lcom/android/internal/telephony/uicc/IccRecords;
    .end local v11    # "mnoMmsApnList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/exsettings/ApnPreference;>;"
    .end local v12    # "mvnoMmsApnList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/exsettings/ApnPreference;>;"
    .end local v17    # "apnList":Landroid/preference/PreferenceGroup;
    .end local v20    # "i$":Ljava/util/Iterator;
    .end local v29    # "preference":Landroid/preference/Preference;
    :cond_14
    return-void
.end method

.method public static getLocalizedName(Landroid/content/Context;Landroid/database/Cursor;I)Ljava/lang/String;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "index"    # I

    .prologue
    .line 384
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 385
    .local v3, "resName":Ljava/lang/String;
    const/4 v1, 0x0

    .line 386
    .local v1, "localizedName":Ljava/lang/String;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 387
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const-string v5, "string"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v3, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 390
    .local v2, "resId":I
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 391
    const-string v4, "ApnSettings"

    const-string v5, "Replaced apn name with localized name"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 396
    .end local v2    # "resId":I
    :cond_0
    :goto_0
    return-object v1

    .line 392
    .restart local v2    # "resId":I
    :catch_0
    move-exception v0

    .line 393
    .local v0, "e":Landroid/content/res/Resources$NotFoundException;
    const-string v4, "ApnSettings"

    const-string v5, "Got execption while getting the localized apn name."

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private static getMobileDataState(Landroid/content/Intent;)Lcom/android/internal/telephony/PhoneConstants$DataState;
    .locals 2
    .param p0, "intent"    # Landroid/content/Intent;

    .prologue
    .line 144
    const-string v1, "state"

    invoke-virtual {p0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 145
    .local v0, "str":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 146
    const-class v1, Lcom/android/internal/telephony/PhoneConstants$DataState;

    invoke-static {v1, v0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/PhoneConstants$DataState;

    .line 148
    :goto_0
    return-object v1

    :cond_0
    sget-object v1, Lcom/android/internal/telephony/PhoneConstants$DataState;->DISCONNECTED:Lcom/android/internal/telephony/PhoneConstants$DataState;

    goto :goto_0
.end method

.method private getSelectedApnKey()Ljava/lang/String;
    .locals 9

    .prologue
    const/4 v3, 0x0

    const/4 v8, 0x0

    .line 488
    const/4 v7, 0x0

    .line 490
    .local v7, "key":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/exsettings/ApnSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/exsettings/ApnSettings;->PREFERAPN_URI:Landroid/net/Uri;

    invoke-direct {p0, v1}, Lcom/android/exsettings/ApnSettings;->getUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string v4, "_id"

    aput-object v4, v2, v8

    const-string v5, "name ASC"

    move-object v4, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 492
    .local v6, "cursor":Landroid/database/Cursor;
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 493
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 494
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 496
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 497
    return-object v7
.end method

.method private getUri(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 3
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 579
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubId()I

    move-result v0

    .line 580
    .local v0, "subId":I
    iget-object v1, p0, Lcom/android/exsettings/ApnSettings;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/exsettings/ApnSettings;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v1

    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 582
    iget-object v1, p0, Lcom/android/exsettings/ApnSettings;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v0

    .line 584
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/subId/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    return-object v1
.end method

.method private restoreDefaultApn()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 501
    const/16 v0, 0x3e9

    invoke-virtual {p0, v0}, Lcom/android/exsettings/ApnSettings;->showDialog(I)V

    .line 502
    sput-boolean v3, Lcom/android/exsettings/ApnSettings;->mRestoreDefaultApnMode:Z

    .line 504
    iget-object v0, p0, Lcom/android/exsettings/ApnSettings;->mRestoreApnUiHandler:Lcom/android/exsettings/ApnSettings$RestoreApnUiHandler;

    if-nez v0, :cond_0

    .line 505
    new-instance v0, Lcom/android/exsettings/ApnSettings$RestoreApnUiHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/exsettings/ApnSettings$RestoreApnUiHandler;-><init>(Lcom/android/exsettings/ApnSettings;Lcom/android/exsettings/ApnSettings$1;)V

    iput-object v0, p0, Lcom/android/exsettings/ApnSettings;->mRestoreApnUiHandler:Lcom/android/exsettings/ApnSettings$RestoreApnUiHandler;

    .line 508
    :cond_0
    iget-object v0, p0, Lcom/android/exsettings/ApnSettings;->mRestoreApnProcessHandler:Lcom/android/exsettings/ApnSettings$RestoreApnProcessHandler;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/exsettings/ApnSettings;->mRestoreDefaultApnThread:Landroid/os/HandlerThread;

    if-nez v0, :cond_2

    .line 510
    :cond_1
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "Restore default APN Handler: Process Thread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/exsettings/ApnSettings;->mRestoreDefaultApnThread:Landroid/os/HandlerThread;

    .line 512
    iget-object v0, p0, Lcom/android/exsettings/ApnSettings;->mRestoreDefaultApnThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 513
    new-instance v0, Lcom/android/exsettings/ApnSettings$RestoreApnProcessHandler;

    iget-object v1, p0, Lcom/android/exsettings/ApnSettings;->mRestoreDefaultApnThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    iget-object v2, p0, Lcom/android/exsettings/ApnSettings;->mRestoreApnUiHandler:Lcom/android/exsettings/ApnSettings$RestoreApnUiHandler;

    invoke-direct {v0, p0, v1, v2}, Lcom/android/exsettings/ApnSettings$RestoreApnProcessHandler;-><init>(Lcom/android/exsettings/ApnSettings;Landroid/os/Looper;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/exsettings/ApnSettings;->mRestoreApnProcessHandler:Lcom/android/exsettings/ApnSettings$RestoreApnProcessHandler;

    .line 517
    :cond_2
    iget-object v0, p0, Lcom/android/exsettings/ApnSettings;->mRestoreApnProcessHandler:Lcom/android/exsettings/ApnSettings$RestoreApnProcessHandler;

    invoke-virtual {v0, v3}, Lcom/android/exsettings/ApnSettings$RestoreApnProcessHandler;->sendEmptyMessage(I)Z

    .line 519
    return v3
.end method

.method private setSelectedApnKey(Ljava/lang/String;)V
    .locals 5
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 479
    iput-object p1, p0, Lcom/android/exsettings/ApnSettings;->mSelectedKey:Ljava/lang/String;

    .line 480
    invoke-virtual {p0}, Lcom/android/exsettings/ApnSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 482
    .local v0, "resolver":Landroid/content/ContentResolver;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 483
    .local v1, "values":Landroid/content/ContentValues;
    const-string v2, "apn_id"

    iget-object v3, p0, Lcom/android/exsettings/ApnSettings;->mSelectedKey:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 484
    sget-object v2, Lcom/android/exsettings/ApnSettings;->PREFERAPN_URI:Landroid/net/Uri;

    invoke-direct {p0, v2}, Lcom/android/exsettings/ApnSettings;->getUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2, v1, v4, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 485
    return-void
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 154
    const/16 v0, 0xc

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x1

    .line 185
    invoke-super {p0, p1}, Lcom/android/exsettings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 187
    invoke-virtual {p0}, Lcom/android/exsettings/ApnSettings;->getView()Landroid/view/View;

    move-result-object v1

    const v2, 0x1020004

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 188
    .local v0, "empty":Landroid/widget/TextView;
    if-eqz v0, :cond_0

    .line 189
    const v1, 0x7f0c062a

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 190
    invoke-virtual {p0}, Lcom/android/exsettings/ApnSettings;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 193
    :cond_0
    iget-object v1, p0, Lcom/android/exsettings/ApnSettings;->mUm:Landroid/os/UserManager;

    const-string v2, "no_config_mobile_networks"

    invoke-virtual {v1, v2}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    if-eqz v1, :cond_2

    .line 195
    :cond_1
    iput-boolean v4, p0, Lcom/android/exsettings/ApnSettings;->mUnavailable:Z

    .line 196
    new-instance v1, Landroid/preference/PreferenceScreen;

    invoke-virtual {p0}, Lcom/android/exsettings/ApnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Landroid/preference/PreferenceScreen;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {p0, v1}, Lcom/android/exsettings/ApnSettings;->setPreferenceScreen(Landroid/preference/PreferenceScreen;)V

    .line 206
    :goto_0
    return-void

    .line 200
    :cond_2
    invoke-virtual {p0}, Lcom/android/exsettings/ApnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "subscription"

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubId()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/exsettings/ApnSettings;->mSubId:I

    .line 203
    const v1, 0x7f080009

    invoke-virtual {p0, v1}, Lcom/android/exsettings/ApnSettings;->addPreferencesFromResource(I)V

    .line 205
    invoke-virtual {p0}, Lcom/android/exsettings/ApnSettings;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 159
    invoke-super {p0, p1}, Lcom/android/exsettings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 160
    invoke-virtual {p0}, Lcom/android/exsettings/ApnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 161
    .local v0, "activity":Landroid/app/Activity;
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "sub_id"

    const/4 v6, -0x1

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 163
    .local v3, "subId":I
    const-string v4, "ApnSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onCreate: subId = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    const-string v4, "user"

    invoke-virtual {p0, v4}, Lcom/android/exsettings/ApnSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/UserManager;

    iput-object v4, p0, Lcom/android/exsettings/ApnSettings;->mUm:Landroid/os/UserManager;

    .line 167
    new-instance v4, Landroid/content/IntentFilter;

    const-string v5, "android.intent.action.ANY_DATA_STATE"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v4, p0, Lcom/android/exsettings/ApnSettings;->mMobileStateFilter:Landroid/content/IntentFilter;

    .line 170
    iget-object v4, p0, Lcom/android/exsettings/ApnSettings;->mUm:Landroid/os/UserManager;

    const-string v5, "no_config_mobile_networks"

    invoke-virtual {v4, v5}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 171
    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Lcom/android/exsettings/ApnSettings;->setHasOptionsMenu(Z)V

    .line 174
    :cond_0
    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfo(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v4

    iput-object v4, p0, Lcom/android/exsettings/ApnSettings;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    .line 175
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v4

    iput-object v4, p0, Lcom/android/exsettings/ApnSettings;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    .line 177
    const-string v4, "carrier_config"

    invoke-virtual {p0, v4}, Lcom/android/exsettings/ApnSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/CarrierConfigManager;

    .line 179
    .local v2, "configManager":Landroid/telephony/CarrierConfigManager;
    invoke-virtual {v2}, Landroid/telephony/CarrierConfigManager;->getConfig()Landroid/os/PersistableBundle;

    move-result-object v1

    .line 180
    .local v1, "b":Landroid/os/PersistableBundle;
    const-string v4, "allow_adding_apns_bool"

    invoke-virtual {v1, v4}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/exsettings/ApnSettings;->mAllowAddingApns:Z

    .line 181
    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 3
    .param p1, "id"    # I

    .prologue
    .line 569
    const/16 v1, 0x3e9

    if-ne p1, v1, :cond_0

    .line 570
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/android/exsettings/ApnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 571
    .local v0, "dialog":Landroid/app/ProgressDialog;
    invoke-virtual {p0}, Lcom/android/exsettings/ApnSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0497

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 572
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 575
    .end local v0    # "dialog":Landroid/app/ProgressDialog;
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 4
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 416
    iget-boolean v0, p0, Lcom/android/exsettings/ApnSettings;->mUnavailable:Z

    if-nez v0, :cond_1

    .line 417
    iget-boolean v0, p0, Lcom/android/exsettings/ApnSettings;->mAllowAddingApns:Z

    if-eqz v0, :cond_0

    .line 418
    invoke-virtual {p0}, Lcom/android/exsettings/ApnSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c048f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v3, v2, v3, v0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020112

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 425
    :cond_0
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/android/exsettings/ApnSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0498

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v3, v0, v3, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x1080055

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 430
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/android/exsettings/SettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 431
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 236
    invoke-super {p0}, Lcom/android/exsettings/SettingsPreferenceFragment;->onDestroy()V

    .line 238
    iget-object v0, p0, Lcom/android/exsettings/ApnSettings;->mRestoreDefaultApnThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    .line 239
    iget-object v0, p0, Lcom/android/exsettings/ApnSettings;->mRestoreDefaultApnThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 241
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v0, 0x1

    .line 435
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 444
    invoke-super {p0, p1}, Lcom/android/exsettings/SettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 437
    :pswitch_0
    invoke-direct {p0}, Lcom/android/exsettings/ApnSettings;->addNewApn()V

    goto :goto_0

    .line 441
    :pswitch_1
    invoke-direct {p0}, Lcom/android/exsettings/ApnSettings;->restoreDefaultApn()Z

    goto :goto_0

    .line 435
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 225
    invoke-super {p0}, Lcom/android/exsettings/SettingsPreferenceFragment;->onPause()V

    .line 227
    iget-boolean v0, p0, Lcom/android/exsettings/ApnSettings;->mUnavailable:Z

    if-eqz v0, :cond_0

    .line 232
    :goto_0
    return-void

    .line 231
    :cond_0
    invoke-virtual {p0}, Lcom/android/exsettings/ApnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/exsettings/ApnSettings;->mMobileStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    goto :goto_0
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 3
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    .line 468
    const-string v0, "ApnSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPreferenceChange(): Preference - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", newValue - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", newValue type - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 471
    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 472
    check-cast p2, Ljava/lang/String;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-direct {p0, p2}, Lcom/android/exsettings/ApnSettings;->setSelectedApnKey(Ljava/lang/String;)V

    .line 475
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 6
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 461
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 462
    .local v0, "pos":I
    sget-object v2, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    int-to-long v4, v0

    invoke-static {v2, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 463
    .local v1, "url":Landroid/net/Uri;
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.EDIT"

    invoke-direct {v2, v3, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v2}, Lcom/android/exsettings/ApnSettings;->startActivity(Landroid/content/Intent;)V

    .line 464
    const/4 v2, 0x1

    return v2
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 210
    invoke-super {p0}, Lcom/android/exsettings/SettingsPreferenceFragment;->onResume()V

    .line 212
    iget-boolean v0, p0, Lcom/android/exsettings/ApnSettings;->mUnavailable:Z

    if-eqz v0, :cond_1

    .line 221
    :cond_0
    :goto_0
    return-void

    .line 216
    :cond_1
    invoke-virtual {p0}, Lcom/android/exsettings/ApnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/exsettings/ApnSettings;->mMobileStateReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/exsettings/ApnSettings;->mMobileStateFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 218
    sget-boolean v0, Lcom/android/exsettings/ApnSettings;->mRestoreDefaultApnMode:Z

    if-nez v0, :cond_0

    .line 219
    invoke-direct {p0}, Lcom/android/exsettings/ApnSettings;->fillList()V

    goto :goto_0
.end method
