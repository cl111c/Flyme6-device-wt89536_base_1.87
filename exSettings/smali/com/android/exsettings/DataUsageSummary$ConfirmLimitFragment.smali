.class public Lcom/android/exsettings/DataUsageSummary$ConfirmLimitFragment;
.super Landroid/app/DialogFragment;
.source "DataUsageSummary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exsettings/DataUsageSummary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ConfirmLimitFragment"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 2131
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static show(Lcom/android/exsettings/DataUsageSummary;)V
    .locals 13
    .param p0, "parent"    # Lcom/android/exsettings/DataUsageSummary;

    .prologue
    .line 2136
    invoke-virtual {p0}, Lcom/android/exsettings/DataUsageSummary;->isAdded()Z

    move-result v10

    if-nez v10, :cond_1

    .line 2169
    :cond_0
    :goto_0
    return-void

    .line 2138
    :cond_1
    # getter for: Lcom/android/exsettings/DataUsageSummary;->mPolicyEditor:Lcom/android/exsettings/net/NetworkPolicyEditor;
    invoke-static {p0}, Lcom/android/exsettings/DataUsageSummary;->access$3300(Lcom/android/exsettings/DataUsageSummary;)Lcom/android/exsettings/net/NetworkPolicyEditor;

    move-result-object v10

    # getter for: Lcom/android/exsettings/DataUsageSummary;->mTemplate:Landroid/net/NetworkTemplate;
    invoke-static {p0}, Lcom/android/exsettings/DataUsageSummary;->access$3200(Lcom/android/exsettings/DataUsageSummary;)Landroid/net/NetworkTemplate;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/android/exsettings/net/NetworkPolicyEditor;->getPolicy(Landroid/net/NetworkTemplate;)Landroid/net/NetworkPolicy;

    move-result-object v8

    .line 2139
    .local v8, "policy":Landroid/net/NetworkPolicy;
    if-eqz v8, :cond_0

    .line 2141
    invoke-virtual {p0}, Lcom/android/exsettings/DataUsageSummary;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    .line 2143
    .local v9, "res":Landroid/content/res/Resources;
    iget-wide v10, v8, Landroid/net/NetworkPolicy;->warningBytes:J

    long-to-float v10, v10

    const v11, 0x3f99999a    # 1.2f

    mul-float/2addr v10, v11

    float-to-long v6, v10

    .line 2147
    .local v6, "minLimitBytes":J
    # getter for: Lcom/android/exsettings/DataUsageSummary;->mCurrentTab:Ljava/lang/String;
    invoke-static {p0}, Lcom/android/exsettings/DataUsageSummary;->access$300(Lcom/android/exsettings/DataUsageSummary;)Ljava/lang/String;

    move-result-object v1

    .line 2148
    .local v1, "currentTab":Ljava/lang/String;
    const-string v10, "3g"

    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 2149
    const v10, 0x7f0c08d1

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 2150
    .local v3, "message":Ljava/lang/CharSequence;
    const-wide v10, 0x140000000L

    invoke-static {v10, v11, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    .line 2161
    .local v4, "limitBytes":J
    :goto_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2162
    .local v0, "args":Landroid/os/Bundle;
    const-string v10, "message"

    invoke-virtual {v0, v10, v3}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 2163
    const-string v10, "limitBytes"

    invoke-virtual {v0, v10, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 2165
    new-instance v2, Lcom/android/exsettings/DataUsageSummary$ConfirmLimitFragment;

    invoke-direct {v2}, Lcom/android/exsettings/DataUsageSummary$ConfirmLimitFragment;-><init>()V

    .line 2166
    .local v2, "dialog":Lcom/android/exsettings/DataUsageSummary$ConfirmLimitFragment;
    invoke-virtual {v2, v0}, Lcom/android/exsettings/DataUsageSummary$ConfirmLimitFragment;->setArguments(Landroid/os/Bundle;)V

    .line 2167
    const/4 v10, 0x0

    invoke-virtual {v2, p0, v10}, Lcom/android/exsettings/DataUsageSummary$ConfirmLimitFragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 2168
    invoke-virtual {p0}, Lcom/android/exsettings/DataUsageSummary;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v10

    const-string v11, "confirmLimit"

    invoke-virtual {v2, v10, v11}, Lcom/android/exsettings/DataUsageSummary$ConfirmLimitFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0

    .line 2151
    .end local v0    # "args":Landroid/os/Bundle;
    .end local v2    # "dialog":Lcom/android/exsettings/DataUsageSummary$ConfirmLimitFragment;
    .end local v3    # "message":Ljava/lang/CharSequence;
    .end local v4    # "limitBytes":J
    :cond_2
    const-string v10, "4g"

    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 2152
    const v10, 0x7f0c08d1

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 2153
    .restart local v3    # "message":Ljava/lang/CharSequence;
    const-wide v10, 0x140000000L

    invoke-static {v10, v11, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    .restart local v4    # "limitBytes":J
    goto :goto_1

    .line 2154
    .end local v3    # "message":Ljava/lang/CharSequence;
    .end local v4    # "limitBytes":J
    :cond_3
    # invokes: Lcom/android/exsettings/DataUsageSummary;->isMobileTab(Ljava/lang/String;)Z
    invoke-static {v1}, Lcom/android/exsettings/DataUsageSummary;->access$400(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 2155
    const v10, 0x7f0c08d1

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 2156
    .restart local v3    # "message":Ljava/lang/CharSequence;
    const-wide v10, 0x140000000L

    invoke-static {v10, v11, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    .restart local v4    # "limitBytes":J
    goto :goto_1

    .line 2158
    .end local v3    # "message":Ljava/lang/CharSequence;
    .end local v4    # "limitBytes":J
    :cond_4
    new-instance v10, Ljava/lang/IllegalArgumentException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "unknown current tab: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 2173
    invoke-virtual {p0}, Lcom/android/exsettings/DataUsageSummary$ConfirmLimitFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 2175
    .local v1, "context":Landroid/content/Context;
    invoke-virtual {p0}, Lcom/android/exsettings/DataUsageSummary$ConfirmLimitFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "message"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v4

    .line 2176
    .local v4, "message":Ljava/lang/CharSequence;
    invoke-virtual {p0}, Lcom/android/exsettings/DataUsageSummary$ConfirmLimitFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "limitBytes"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 2178
    .local v2, "limitBytes":J
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2179
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const v5, 0x7f0c08d0

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 2180
    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 2182
    const v5, 0x104000a

    new-instance v6, Lcom/android/exsettings/DataUsageSummary$ConfirmLimitFragment$1;

    invoke-direct {v6, p0, v2, v3}, Lcom/android/exsettings/DataUsageSummary$ConfirmLimitFragment$1;-><init>(Lcom/android/exsettings/DataUsageSummary$ConfirmLimitFragment;J)V

    invoke-virtual {v0, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2192
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    return-object v5
.end method
