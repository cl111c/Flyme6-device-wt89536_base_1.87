.class public Lcom/android/exsettings/wifi/AccessPointPreferenceGuide$UserBadgeCache;
.super Ljava/lang/Object;
.source "AccessPointPreferenceGuide.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exsettings/wifi/AccessPointPreferenceGuide;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UserBadgeCache"
.end annotation


# instance fields
.field private final mBadges:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field private final mPm:Landroid/content/pm/PackageManager;


# direct methods
.method constructor <init>(Landroid/content/pm/PackageManager;)V
    .locals 1
    .param p1, "pm"    # Landroid/content/pm/PackageManager;

    .prologue
    .line 286
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 283
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/exsettings/wifi/AccessPointPreferenceGuide$UserBadgeCache;->mBadges:Landroid/util/SparseArray;

    .line 287
    iput-object p1, p0, Lcom/android/exsettings/wifi/AccessPointPreferenceGuide$UserBadgeCache;->mPm:Landroid/content/pm/PackageManager;

    .line 288
    return-void
.end method

.method static synthetic access$000(Lcom/android/exsettings/wifi/AccessPointPreferenceGuide$UserBadgeCache;I)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "x0"    # Lcom/android/exsettings/wifi/AccessPointPreferenceGuide$UserBadgeCache;
    .param p1, "x1"    # I

    .prologue
    .line 282
    invoke-direct {p0, p1}, Lcom/android/exsettings/wifi/AccessPointPreferenceGuide$UserBadgeCache;->getUserBadge(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method private getUserBadge(I)Landroid/graphics/drawable/Drawable;
    .locals 5
    .param p1, "userId"    # I

    .prologue
    .line 291
    iget-object v2, p0, Lcom/android/exsettings/wifi/AccessPointPreferenceGuide$UserBadgeCache;->mBadges:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v1

    .line 292
    .local v1, "index":I
    if-gez v1, :cond_0

    .line 293
    iget-object v2, p0, Lcom/android/exsettings/wifi/AccessPointPreferenceGuide$UserBadgeCache;->mPm:Landroid/content/pm/PackageManager;

    new-instance v3, Landroid/os/UserHandle;

    invoke-direct {v3, p1}, Landroid/os/UserHandle;-><init>(I)V

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getUserBadgeForDensity(Landroid/os/UserHandle;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 294
    .local v0, "badge":Landroid/graphics/drawable/Drawable;
    iget-object v2, p0, Lcom/android/exsettings/wifi/AccessPointPreferenceGuide$UserBadgeCache;->mBadges:Landroid/util/SparseArray;

    invoke-virtual {v2, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 297
    .end local v0    # "badge":Landroid/graphics/drawable/Drawable;
    :goto_0
    return-object v0

    :cond_0
    iget-object v2, p0, Lcom/android/exsettings/wifi/AccessPointPreferenceGuide$UserBadgeCache;->mBadges:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/Drawable;

    move-object v0, v2

    goto :goto_0
.end method
