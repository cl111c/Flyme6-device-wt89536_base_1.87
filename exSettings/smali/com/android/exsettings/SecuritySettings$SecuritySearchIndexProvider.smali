.class Lcom/android/exsettings/SecuritySettings$SecuritySearchIndexProvider;
.super Lcom/android/exsettings/search/BaseSearchIndexProvider;
.source "SecuritySettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exsettings/SecuritySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SecuritySearchIndexProvider"
.end annotation


# instance fields
.field mIsPrimary:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 769
    invoke-direct {p0}, Lcom/android/exsettings/search/BaseSearchIndexProvider;-><init>()V

    .line 771
    # getter for: Lcom/android/exsettings/SecuritySettings;->MY_USER_ID:I
    invoke-static {}, Lcom/android/exsettings/SecuritySettings;->access$000()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/exsettings/SecuritySettings$SecuritySearchIndexProvider;->mIsPrimary:Z

    .line 772
    return-void

    .line 771
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getNonIndexableKeys(Landroid/content/Context;)Ljava/util/List;
    .locals 5
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
    .line 894
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 896
    .local v0, "keys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v1, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v1, p1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 902
    .local v1, "lockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    .line 903
    .local v2, "tm":Landroid/telephony/TelephonyManager;
    iget-boolean v4, p0, Lcom/android/exsettings/SecuritySettings$SecuritySearchIndexProvider;->mIsPrimary:Z

    if-eqz v4, :cond_0

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->hasIccCard()Z

    move-result v4

    if-nez v4, :cond_1

    .line 904
    :cond_0
    const-string v4, "sim_lock"

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 907
    :cond_1
    const-string v4, "user"

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/UserManager;

    .line 908
    .local v3, "um":Landroid/os/UserManager;
    const-string v4, "no_config_credentials"

    invoke-virtual {v3, v4}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 909
    const-string v4, "credentials_management"

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 913
    :cond_2
    # getter for: Lcom/android/exsettings/SecuritySettings;->MY_USER_ID:I
    invoke-static {}, Lcom/android/exsettings/SecuritySettings;->access$000()I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v4

    if-nez v4, :cond_3

    .line 914
    const-string v4, "trust_agent"

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 915
    const-string v4, "manage_trust_agents"

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 918
    :cond_3
    return-object v0
.end method

.method public getRawDataToIndex(Landroid/content/Context;Z)Ljava/util/List;
    .locals 14
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "enabled"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Lcom/android/exsettings/search/SearchIndexableRaw;",
            ">;"
        }
    .end annotation

    .prologue
    .line 822
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 823
    .local v8, "result":Ljava/util/List;, "Ljava/util/List<Lcom/android/exsettings/search/SearchIndexableRaw;>;"
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 825
    .local v6, "res":Landroid/content/res/Resources;
    const v12, 0x7f0c0181

    invoke-virtual {v6, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 827
    .local v9, "screenTitle":Ljava/lang/String;
    new-instance v2, Lcom/android/exsettings/search/SearchIndexableRaw;

    invoke-direct {v2, p1}, Lcom/android/exsettings/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    .line 828
    .local v2, "data":Lcom/android/exsettings/search/SearchIndexableRaw;
    iput-object v9, v2, Lcom/android/exsettings/search/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 829
    iput-object v9, v2, Lcom/android/exsettings/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    .line 830
    invoke-interface {v8, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 832
    iget-boolean v12, p0, Lcom/android/exsettings/SecuritySettings$SecuritySearchIndexProvider;->mIsPrimary:Z

    if-nez v12, :cond_0

    .line 833
    invoke-static {p1}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v12

    invoke-virtual {v12}, Landroid/os/UserManager;->isLinkedUser()Z

    move-result v12

    if-eqz v12, :cond_2

    const v7, 0x7f0c017d

    .line 836
    .local v7, "resId":I
    :goto_0
    new-instance v2, Lcom/android/exsettings/search/SearchIndexableRaw;

    .end local v2    # "data":Lcom/android/exsettings/search/SearchIndexableRaw;
    invoke-direct {v2, p1}, Lcom/android/exsettings/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    .line 837
    .restart local v2    # "data":Lcom/android/exsettings/search/SearchIndexableRaw;
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    iput-object v12, v2, Lcom/android/exsettings/search/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 838
    iput-object v9, v2, Lcom/android/exsettings/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    .line 839
    invoke-interface {v8, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 860
    .end local v7    # "resId":I
    :cond_0
    const-string v12, "user"

    invoke-virtual {p1, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/os/UserManager;

    .line 862
    .local v11, "um":Landroid/os/UserManager;
    const-string v12, "no_config_credentials"

    invoke-virtual {v11, v12}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_1

    .line 863
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v4

    .line 865
    .local v4, "keyStore":Landroid/security/KeyStore;
    invoke-virtual {v4}, Landroid/security/KeyStore;->isHardwareBacked()Z

    move-result v12

    if-eqz v12, :cond_3

    const v10, 0x7f0c07bf

    .line 869
    .local v10, "storageSummaryRes":I
    :goto_1
    new-instance v2, Lcom/android/exsettings/search/SearchIndexableRaw;

    .end local v2    # "data":Lcom/android/exsettings/search/SearchIndexableRaw;
    invoke-direct {v2, p1}, Lcom/android/exsettings/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    .line 870
    .restart local v2    # "data":Lcom/android/exsettings/search/SearchIndexableRaw;
    invoke-virtual {v6, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    iput-object v12, v2, Lcom/android/exsettings/search/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 871
    iput-object v9, v2, Lcom/android/exsettings/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    .line 872
    invoke-interface {v8, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 876
    .end local v4    # "keyStore":Landroid/security/KeyStore;
    .end local v10    # "storageSummaryRes":I
    :cond_1
    new-instance v5, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v5, p1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 877
    .local v5, "lockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    # getter for: Lcom/android/exsettings/SecuritySettings;->MY_USER_ID:I
    invoke-static {}, Lcom/android/exsettings/SecuritySettings;->access$000()I

    move-result v12

    invoke-virtual {v5, v12}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 878
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v13

    const-class v12, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {p1, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/app/admin/DevicePolicyManager;

    # invokes: Lcom/android/exsettings/SecuritySettings;->getActiveTrustAgents(Landroid/content/pm/PackageManager;Lcom/android/internal/widget/LockPatternUtils;Landroid/app/admin/DevicePolicyManager;)Ljava/util/ArrayList;
    invoke-static {v13, v5, v12}, Lcom/android/exsettings/SecuritySettings;->access$100(Landroid/content/pm/PackageManager;Lcom/android/internal/widget/LockPatternUtils;Landroid/app/admin/DevicePolicyManager;)Ljava/util/ArrayList;

    move-result-object v1

    .line 881
    .local v1, "agents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/exsettings/TrustAgentUtils$TrustAgentComponentInfo;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge v3, v12, :cond_4

    .line 882
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/exsettings/TrustAgentUtils$TrustAgentComponentInfo;

    .line 883
    .local v0, "agent":Lcom/android/exsettings/TrustAgentUtils$TrustAgentComponentInfo;
    new-instance v2, Lcom/android/exsettings/search/SearchIndexableRaw;

    .end local v2    # "data":Lcom/android/exsettings/search/SearchIndexableRaw;
    invoke-direct {v2, p1}, Lcom/android/exsettings/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    .line 884
    .restart local v2    # "data":Lcom/android/exsettings/search/SearchIndexableRaw;
    iget-object v12, v0, Lcom/android/exsettings/TrustAgentUtils$TrustAgentComponentInfo;->title:Ljava/lang/String;

    iput-object v12, v2, Lcom/android/exsettings/search/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 885
    iput-object v9, v2, Lcom/android/exsettings/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    .line 886
    invoke-interface {v8, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 881
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 833
    .end local v0    # "agent":Lcom/android/exsettings/TrustAgentUtils$TrustAgentComponentInfo;
    .end local v1    # "agents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/exsettings/TrustAgentUtils$TrustAgentComponentInfo;>;"
    .end local v3    # "i":I
    .end local v5    # "lockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    .end local v11    # "um":Landroid/os/UserManager;
    :cond_2
    const v7, 0x7f0c017b

    goto :goto_0

    .line 865
    .restart local v4    # "keyStore":Landroid/security/KeyStore;
    .restart local v11    # "um":Landroid/os/UserManager;
    :cond_3
    const v10, 0x7f0c07c0

    goto :goto_1

    .line 889
    .end local v4    # "keyStore":Landroid/security/KeyStore;
    .restart local v5    # "lockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    :cond_4
    return-object v8
.end method

.method public getXmlResourcesToIndex(Landroid/content/Context;Z)Ljava/util/List;
    .locals 6
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
    .line 778
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 780
    .local v3, "result":Ljava/util/List;, "Ljava/util/List<Landroid/provider/SearchIndexableResource;>;"
    new-instance v1, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v1, p1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 790
    .local v1, "lockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    const/4 v2, 0x0

    .line 792
    .local v2, "resId":I
    iget-boolean v5, p0, Lcom/android/exsettings/SecuritySettings$SecuritySearchIndexProvider;->mIsPrimary:Z

    if-eqz v5, :cond_0

    .line 793
    const-string v5, "device_policy"

    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 796
    .local v0, "dpm":Landroid/app/admin/DevicePolicyManager;
    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->getStorageEncryptionStatus()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    .line 807
    :goto_0
    :pswitch_0
    new-instance v4, Landroid/provider/SearchIndexableResource;

    invoke-direct {v4, p1}, Landroid/provider/SearchIndexableResource;-><init>(Landroid/content/Context;)V

    .line 808
    .local v4, "sir":Landroid/provider/SearchIndexableResource;
    iput v2, v4, Landroid/provider/SearchIndexableResource;->xmlResId:I

    .line 809
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 813
    .end local v0    # "dpm":Landroid/app/admin/DevicePolicyManager;
    .end local v4    # "sir":Landroid/provider/SearchIndexableResource;
    :cond_0
    new-instance v4, Landroid/provider/SearchIndexableResource;

    invoke-direct {v4, p1}, Landroid/provider/SearchIndexableResource;-><init>(Landroid/content/Context;)V

    .line 814
    .restart local v4    # "sir":Landroid/provider/SearchIndexableResource;
    const v5, 0x7f080048

    iput v5, v4, Landroid/provider/SearchIndexableResource;->xmlResId:I

    .line 815
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 817
    return-object v3

    .line 799
    .end local v4    # "sir":Landroid/provider/SearchIndexableResource;
    .restart local v0    # "dpm":Landroid/app/admin/DevicePolicyManager;
    :pswitch_1
    const v2, 0x7f080045

    .line 800
    goto :goto_0

    .line 803
    :pswitch_2
    const v2, 0x7f08004e

    goto :goto_0

    .line 796
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
