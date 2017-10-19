.class public Lcom/android/exsettings/EncryptionInterstitial$EncryptionInterstitialFragment;
.super Lcom/android/exsettings/SettingsPreferenceFragment;
.source "EncryptionInterstitial.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exsettings/EncryptionInterstitial;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EncryptionInterstitialFragment"
.end annotation


# instance fields
.field private mDontRequirePasswordToDecryptButton:Landroid/widget/RadioButton;

.field private mEncryptionMessage:Landroid/widget/TextView;

.field private mPasswordRequired:Z

.field private mRequirePasswordToDecryptButton:Landroid/widget/RadioButton;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/android/exsettings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method private setRequirePasswordState(Z)V
    .locals 4
    .param p1, "required"    # Z

    .prologue
    .line 218
    iput-boolean p1, p0, Lcom/android/exsettings/EncryptionInterstitial$EncryptionInterstitialFragment;->mPasswordRequired:Z

    .line 219
    iget-object v2, p0, Lcom/android/exsettings/EncryptionInterstitial$EncryptionInterstitialFragment;->mRequirePasswordToDecryptButton:Landroid/widget/RadioButton;

    invoke-virtual {v2, p1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 220
    iget-object v3, p0, Lcom/android/exsettings/EncryptionInterstitial$EncryptionInterstitialFragment;->mDontRequirePasswordToDecryptButton:Landroid/widget/RadioButton;

    if-nez p1, :cond_1

    const/4 v2, 0x1

    :goto_0
    invoke-virtual {v3, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 223
    invoke-virtual {p0}, Lcom/android/exsettings/EncryptionInterstitial$EncryptionInterstitialFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/android/exsettings/SettingsActivity;

    .line 224
    .local v1, "sa":Lcom/android/exsettings/SettingsActivity;
    invoke-virtual {v1}, Lcom/android/exsettings/SettingsActivity;->getResultIntentData()Landroid/content/Intent;

    move-result-object v0

    .line 225
    .local v0, "resultIntentData":Landroid/content/Intent;
    if-nez v0, :cond_0

    .line 226
    new-instance v0, Landroid/content/Intent;

    .end local v0    # "resultIntentData":Landroid/content/Intent;
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 227
    .restart local v0    # "resultIntentData":Landroid/content/Intent;
    invoke-virtual {v1, v0}, Lcom/android/exsettings/SettingsActivity;->setResultIntentData(Landroid/content/Intent;)V

    .line 229
    :cond_0
    const-string v2, "extra_require_password"

    iget-boolean v3, p0, Lcom/android/exsettings/EncryptionInterstitial$EncryptionInterstitialFragment;->mPasswordRequired:Z

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 230
    return-void

    .line 220
    .end local v0    # "resultIntentData":Landroid/content/Intent;
    .end local v1    # "sa":Lcom/android/exsettings/SettingsActivity;
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 90
    const/16 v0, 0x30

    return v0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 234
    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    .line 235
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/exsettings/EncryptionInterstitial$EncryptionInterstitialFragment;->setRequirePasswordState(Z)V

    .line 239
    :cond_0
    :goto_0
    return-void

    .line 236
    :cond_1
    const/4 v0, -0x2

    if-ne p2, v0, :cond_0

    .line 237
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/exsettings/EncryptionInterstitial$EncryptionInterstitialFragment;->setRequirePasswordState(Z)V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 152
    iget-object v1, p0, Lcom/android/exsettings/EncryptionInterstitial$EncryptionInterstitialFragment;->mRequirePasswordToDecryptButton:Landroid/widget/RadioButton;

    if-ne p1, v1, :cond_1

    .line 153
    invoke-virtual {p0}, Lcom/android/exsettings/EncryptionInterstitial$EncryptionInterstitialFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    .line 154
    .local v0, "accEn":Z
    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/android/exsettings/EncryptionInterstitial$EncryptionInterstitialFragment;->mPasswordRequired:Z

    if-nez v1, :cond_0

    .line 155
    invoke-direct {p0, v2}, Lcom/android/exsettings/EncryptionInterstitial$EncryptionInterstitialFragment;->setRequirePasswordState(Z)V

    .line 156
    invoke-virtual {p0, v3}, Lcom/android/exsettings/EncryptionInterstitial$EncryptionInterstitialFragment;->showDialog(I)V

    .line 163
    .end local v0    # "accEn":Z
    :goto_0
    return-void

    .line 158
    .restart local v0    # "accEn":Z
    :cond_0
    invoke-direct {p0, v3}, Lcom/android/exsettings/EncryptionInterstitial$EncryptionInterstitialFragment;->setRequirePasswordState(Z)V

    goto :goto_0

    .line 161
    .end local v0    # "accEn":Z
    :cond_1
    invoke-direct {p0, v2}, Lcom/android/exsettings/EncryptionInterstitial$EncryptionInterstitialFragment;->setRequirePasswordState(Z)V

    goto :goto_0
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 9
    .param p1, "dialogId"    # I

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 167
    packed-switch p1, :pswitch_data_0

    .line 213
    new-instance v5, Ljava/lang/IllegalArgumentException;

    invoke-direct {v5}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v5

    .line 172
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/exsettings/EncryptionInterstitial$EncryptionInterstitialFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v6, "extra_password_quality"

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 176
    .local v3, "quality":I
    sparse-switch v3, :sswitch_data_0

    .line 187
    const v4, 0x7f0c0ab6

    .line 188
    .local v4, "titleId":I
    const v2, 0x7f0c0ab9

    .line 193
    .local v2, "messageId":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/exsettings/EncryptionInterstitial$EncryptionInterstitialFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v5

    const/4 v6, -0x1

    invoke-virtual {v5, v6}, Landroid/view/accessibility/AccessibilityManager;->getEnabledAccessibilityServiceList(I)Ljava/util/List;

    move-result-object v1

    .line 198
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Landroid/accessibilityservice/AccessibilityServiceInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 200
    const-string v0, ""

    .line 205
    .local v0, "exampleAccessibility":Ljava/lang/CharSequence;
    :goto_1
    new-instance v5, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/exsettings/EncryptionInterstitial$EncryptionInterstitialFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    new-array v6, v8, [Ljava/lang/Object;

    aput-object v0, v6, v7

    invoke-virtual {p0, v2, v6}, Lcom/android/exsettings/EncryptionInterstitial$EncryptionInterstitialFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x104000a

    invoke-virtual {v5, v6, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const/high16 v6, 0x1040000

    invoke-virtual {v5, v6, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    return-object v5

    .line 178
    .end local v0    # "exampleAccessibility":Ljava/lang/CharSequence;
    .end local v1    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/accessibilityservice/AccessibilityServiceInfo;>;"
    .end local v2    # "messageId":I
    .end local v4    # "titleId":I
    :sswitch_0
    const v4, 0x7f0c0ab5

    .line 179
    .restart local v4    # "titleId":I
    const v2, 0x7f0c0ab8

    .line 180
    .restart local v2    # "messageId":I
    goto :goto_0

    .line 183
    .end local v2    # "messageId":I
    .end local v4    # "titleId":I
    :sswitch_1
    const v4, 0x7f0c0ab4

    .line 184
    .restart local v4    # "titleId":I
    const v2, 0x7f0c0ab7

    .line 185
    .restart local v2    # "messageId":I
    goto :goto_0

    .line 202
    .restart local v1    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/accessibilityservice/AccessibilityServiceInfo;>;"
    :cond_0
    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/accessibilityservice/AccessibilityServiceInfo;

    invoke-virtual {v5}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/exsettings/EncryptionInterstitial$EncryptionInterstitialFragment;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    .restart local v0    # "exampleAccessibility":Ljava/lang/CharSequence;
    goto :goto_1

    .line 167
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    .line 176
    :sswitch_data_0
    .sparse-switch
        0x10000 -> :sswitch_0
        0x20000 -> :sswitch_1
        0x30000 -> :sswitch_1
    .end sparse-switch
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 96
    const v0, 0x7f040069

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 8
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v7, 0x0

    .line 101
    invoke-super {p0, p1, p2}, Lcom/android/exsettings/SettingsPreferenceFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 102
    const v5, 0x7f1200d1

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/RadioButton;

    iput-object v5, p0, Lcom/android/exsettings/EncryptionInterstitial$EncryptionInterstitialFragment;->mRequirePasswordToDecryptButton:Landroid/widget/RadioButton;

    .line 104
    const v5, 0x7f1200d2

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/RadioButton;

    iput-object v5, p0, Lcom/android/exsettings/EncryptionInterstitial$EncryptionInterstitialFragment;->mDontRequirePasswordToDecryptButton:Landroid/widget/RadioButton;

    .line 106
    const v5, 0x7f1200d0

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/android/exsettings/EncryptionInterstitial$EncryptionInterstitialFragment;->mEncryptionMessage:Landroid/widget/TextView;

    .line 108
    invoke-virtual {p0}, Lcom/android/exsettings/EncryptionInterstitial$EncryptionInterstitialFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v6, "for_fingerprint"

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 110
    .local v2, "forFingerprint":Z
    invoke-virtual {p0}, Lcom/android/exsettings/EncryptionInterstitial$EncryptionInterstitialFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v6, "extra_password_quality"

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 114
    .local v4, "quality":I
    sparse-switch v4, :sswitch_data_0

    .line 131
    if-eqz v2, :cond_2

    const v3, 0x7f0c0aad

    .line 134
    .local v3, "msgId":I
    :goto_0
    const v1, 0x7f0c0ab0

    .line 135
    .local v1, "enableId":I
    const v0, 0x7f0c0ab3

    .line 138
    .local v0, "disableId":I
    :goto_1
    iget-object v5, p0, Lcom/android/exsettings/EncryptionInterstitial$EncryptionInterstitialFragment;->mEncryptionMessage:Landroid/widget/TextView;

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setText(I)V

    .line 140
    iget-object v5, p0, Lcom/android/exsettings/EncryptionInterstitial$EncryptionInterstitialFragment;->mRequirePasswordToDecryptButton:Landroid/widget/RadioButton;

    invoke-virtual {v5, p0}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 141
    iget-object v5, p0, Lcom/android/exsettings/EncryptionInterstitial$EncryptionInterstitialFragment;->mRequirePasswordToDecryptButton:Landroid/widget/RadioButton;

    invoke-virtual {v5, v1}, Landroid/widget/RadioButton;->setText(I)V

    .line 143
    iget-object v5, p0, Lcom/android/exsettings/EncryptionInterstitial$EncryptionInterstitialFragment;->mDontRequirePasswordToDecryptButton:Landroid/widget/RadioButton;

    invoke-virtual {v5, p0}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 144
    iget-object v5, p0, Lcom/android/exsettings/EncryptionInterstitial$EncryptionInterstitialFragment;->mDontRequirePasswordToDecryptButton:Landroid/widget/RadioButton;

    invoke-virtual {v5, v0}, Landroid/widget/RadioButton;->setText(I)V

    .line 146
    invoke-virtual {p0}, Lcom/android/exsettings/EncryptionInterstitial$EncryptionInterstitialFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v6, "extra_require_password"

    const/4 v7, 0x1

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    invoke-direct {p0, v5}, Lcom/android/exsettings/EncryptionInterstitial$EncryptionInterstitialFragment;->setRequirePasswordState(Z)V

    .line 148
    return-void

    .line 116
    .end local v0    # "disableId":I
    .end local v1    # "enableId":I
    .end local v3    # "msgId":I
    :sswitch_0
    if-eqz v2, :cond_0

    const v3, 0x7f0c0aac

    .line 119
    .restart local v3    # "msgId":I
    :goto_2
    const v1, 0x7f0c0aaf

    .line 120
    .restart local v1    # "enableId":I
    const v0, 0x7f0c0ab2

    .line 121
    .restart local v0    # "disableId":I
    goto :goto_1

    .line 116
    .end local v0    # "disableId":I
    .end local v1    # "enableId":I
    .end local v3    # "msgId":I
    :cond_0
    const v3, 0x7f0c0aa9

    goto :goto_2

    .line 124
    :sswitch_1
    if-eqz v2, :cond_1

    const v3, 0x7f0c0aab

    .line 127
    .restart local v3    # "msgId":I
    :goto_3
    const v1, 0x7f0c0aae

    .line 128
    .restart local v1    # "enableId":I
    const v0, 0x7f0c0ab1

    .line 129
    .restart local v0    # "disableId":I
    goto :goto_1

    .line 124
    .end local v0    # "disableId":I
    .end local v1    # "enableId":I
    .end local v3    # "msgId":I
    :cond_1
    const v3, 0x7f0c0aa8

    goto :goto_3

    .line 131
    :cond_2
    const v3, 0x7f0c0aaa

    goto :goto_0

    .line 114
    nop

    :sswitch_data_0
    .sparse-switch
        0x10000 -> :sswitch_0
        0x20000 -> :sswitch_1
        0x30000 -> :sswitch_1
    .end sparse-switch
.end method
