.class final Lcom/android/exsettings/WirelessSettings$2;
.super Lcom/android/exsettings/search/BaseSearchIndexProvider;
.source "WirelessSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exsettings/WirelessSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 646
    invoke-direct {p0}, Lcom/android/exsettings/search/BaseSearchIndexProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getNonIndexableKeys(Landroid/content/Context;)Ljava/util/List;
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v9, 0x0

    .line 657
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 659
    .local v7, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v10, "toggle_nsd"

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 661
    const-string v10, "user"

    invoke-virtual {p1, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/os/UserManager;

    .line 662
    .local v8, "um":Landroid/os/UserManager;
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    .line 663
    .local v5, "myUserId":I
    if-eqz v5, :cond_b

    move v3, v4

    .line 666
    .local v3, "isSecondaryUser":Z
    :goto_0
    if-nez v3, :cond_c

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x1120069

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v10

    if-eqz v10, :cond_c

    .line 669
    .local v4, "isWimaxEnabled":Z
    :goto_1
    if-eqz v4, :cond_0

    const-string v9, "no_config_mobile_networks"

    invoke-virtual {v8, v9}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 671
    :cond_0
    const-string v9, "wimax_settings"

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 674
    :cond_1
    if-eqz v3, :cond_2

    .line 675
    const-string v9, "vpn_settings"

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 692
    :cond_2
    if-nez v3, :cond_3

    invoke-static {p1}, Lcom/android/exsettings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 693
    :cond_3
    const-string v9, "mobile_network_settings"

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 694
    const-string v9, "manage_mobile_plan"

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 699
    :cond_4
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f100009

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    .line 701
    .local v2, "isMobilePlanEnabled":Z
    if-nez v2, :cond_5

    .line 702
    const-string v9, "manage_mobile_plan"

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 714
    :cond_5
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    .line 717
    .local v6, "pm":Landroid/content/pm/PackageManager;
    const-string v9, "android.hardware.type.television"

    invoke-virtual {v6, v9}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 718
    const-string v9, "toggle_airplane"

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 722
    :cond_6
    const-string v9, "proxy_settings"

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 732
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x1120072

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    .line 735
    .local v1, "isCellBroadcastAppLinkEnabled":Z
    if-eqz v1, :cond_7

    .line 736
    :try_start_0
    const-string v9, "com.android.cellbroadcastreceiver"

    invoke-virtual {v6, v9}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v9

    const/4 v10, 0x2

    if-ne v9, v10, :cond_7

    .line 738
    const/4 v1, 0x0

    .line 744
    :cond_7
    :goto_2
    if-nez v3, :cond_8

    if-nez v1, :cond_9

    .line 745
    :cond_8
    const-string v9, "cell_broadcast_settings"

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 748
    :cond_9
    invoke-static {p1}, Lcom/android/ims/ImsManager;->isWfcEnabledByPlatform(Landroid/content/Context;)Z

    move-result v9

    if-nez v9, :cond_a

    .line 749
    const-string v9, "wifi_calling_settings"

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 752
    :cond_a
    return-object v7

    .end local v1    # "isCellBroadcastAppLinkEnabled":Z
    .end local v2    # "isMobilePlanEnabled":Z
    .end local v3    # "isSecondaryUser":Z
    .end local v4    # "isWimaxEnabled":Z
    .end local v6    # "pm":Landroid/content/pm/PackageManager;
    :cond_b
    move v3, v9

    .line 663
    goto/16 :goto_0

    .restart local v3    # "isSecondaryUser":Z
    :cond_c
    move v4, v9

    .line 666
    goto :goto_1

    .line 741
    .restart local v1    # "isCellBroadcastAppLinkEnabled":Z
    .restart local v2    # "isMobilePlanEnabled":Z
    .restart local v4    # "isWimaxEnabled":Z
    .restart local v6    # "pm":Landroid/content/pm/PackageManager;
    :catch_0
    move-exception v0

    .line 742
    .local v0, "ignored":Ljava/lang/IllegalArgumentException;
    const/4 v1, 0x0

    goto :goto_2
.end method

.method public getXmlResourcesToIndex(Landroid/content/Context;Z)Ljava/util/List;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "enabled"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Landroid/provider/SearchIndexableResource;",
            ">;"
        }
    .end annotation

    .prologue
    .line 650
    new-instance v0, Landroid/provider/SearchIndexableResource;

    invoke-direct {v0, p1}, Landroid/provider/SearchIndexableResource;-><init>(Landroid/content/Context;)V

    .line 651
    .local v0, "sir":Landroid/provider/SearchIndexableResource;
    const v1, 0x7f080070

    iput v1, v0, Landroid/provider/SearchIndexableResource;->xmlResId:I

    .line 652
    const/4 v1, 0x1

    new-array v1, v1, [Landroid/provider/SearchIndexableResource;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method
