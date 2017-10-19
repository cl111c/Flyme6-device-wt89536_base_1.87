.class public Lcom/android/exsettings/extwifi/ExtWifiDialogActivity;
.super Lcom/android/internal/app/AlertActivity;
.source "ExtWifiDialogActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private mCb:Landroid/widget/CheckBox;

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    return-void
.end method

.method private createView()Landroid/view/View;
    .locals 5

    .prologue
    .line 79
    invoke-virtual {p0}, Lcom/android/exsettings/extwifi/ExtWifiDialogActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f040022

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 80
    .local v1, "view":Landroid/view/View;
    const v2, 0x7f120039

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 81
    .local v0, "contentView":Landroid/widget/TextView;
    const v2, 0x7f0c0d9e

    invoke-virtual {p0, v2}, Lcom/android/exsettings/extwifi/ExtWifiDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 82
    const v2, 0x7f12003a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    iput-object v2, p0, Lcom/android/exsettings/extwifi/ExtWifiDialogActivity;->mCb:Landroid/widget/CheckBox;

    .line 83
    return-object v1
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 87
    packed-switch p2, :pswitch_data_0

    .line 114
    :goto_0
    return-void

    .line 90
    :pswitch_0
    iget-object v0, p0, Lcom/android/exsettings/extwifi/ExtWifiDialogActivity;->mContext:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/android/exsettings/extwifi/Utils;->setMobileDataEnabled(Landroid/content/Context;Z)V

    .line 92
    iget-object v0, p0, Lcom/android/exsettings/extwifi/ExtWifiDialogActivity;->mCb:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-ne v0, v1, :cond_0

    .line 93
    iget-object v0, p0, Lcom/android/exsettings/extwifi/ExtWifiDialogActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "wifi_browser_interaction_remind"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 98
    :cond_0
    invoke-virtual {p0}, Lcom/android/exsettings/extwifi/ExtWifiDialogActivity;->finish()V

    goto :goto_0

    .line 103
    :pswitch_1
    iget-object v0, p0, Lcom/android/exsettings/extwifi/ExtWifiDialogActivity;->mContext:Landroid/content/Context;

    invoke-static {v0, v2}, Lcom/android/exsettings/extwifi/Utils;->setMobileDataEnabled(Landroid/content/Context;Z)V

    .line 105
    iget-object v0, p0, Lcom/android/exsettings/extwifi/ExtWifiDialogActivity;->mCb:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-ne v0, v1, :cond_1

    .line 106
    iget-object v0, p0, Lcom/android/exsettings/extwifi/ExtWifiDialogActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "wifi_browser_interaction_remind"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 111
    :cond_1
    invoke-virtual {p0}, Lcom/android/exsettings/extwifi/ExtWifiDialogActivity;->finish()V

    goto :goto_0

    .line 87
    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 64
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    .line 65
    invoke-virtual {p0}, Lcom/android/exsettings/extwifi/ExtWifiDialogActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/android/exsettings/extwifi/ExtWifiDialogActivity;->mContext:Landroid/content/Context;

    .line 67
    iget-object v0, p0, Lcom/android/exsettings/extwifi/ExtWifiDialogActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    .line 69
    .local v0, "p":Lcom/android/internal/app/AlertController$AlertParams;
    const v1, 0x7f0c0d7f

    invoke-virtual {p0, v1}, Lcom/android/exsettings/extwifi/ExtWifiDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 70
    invoke-direct {p0}, Lcom/android/exsettings/extwifi/ExtWifiDialogActivity;->createView()Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    .line 71
    const v1, 0x104000a

    invoke-virtual {p0, v1}, Lcom/android/exsettings/extwifi/ExtWifiDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 72
    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 73
    const/high16 v1, 0x1040000

    invoke-virtual {p0, v1}, Lcom/android/exsettings/extwifi/ExtWifiDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 74
    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 75
    invoke-virtual {p0}, Lcom/android/exsettings/extwifi/ExtWifiDialogActivity;->setupAlert()V

    .line 76
    return-void
.end method
