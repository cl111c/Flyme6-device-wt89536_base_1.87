.class public Lcom/android/exsettings/IccLockSettings;
.super Lcom/android/exsettings/InstrumentedPreferenceActivity;
.source "IccLockSettings.java"

# interfaces
.implements Lcom/android/exsettings/EditPinPreference$OnPinEnteredListener;


# instance fields
.field private mDialogState:I

.field private mEmptyTabContent:Landroid/widget/TabHost$TabContentFactory;

.field private mError:Ljava/lang/String;

.field private mHandler:Landroid/os/Handler;

.field private mListView:Landroid/widget/ListView;

.field private mNewPin:Ljava/lang/String;

.field private mOldPin:Ljava/lang/String;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mPin:Ljava/lang/String;

.field private mPinDialog:Lcom/android/exsettings/EditPinPreference;

.field private mPinToggle:Landroid/preference/SwitchPreference;

.field private mRes:Landroid/content/res/Resources;

.field private final mSimStateReceiver:Landroid/content/BroadcastReceiver;

.field private mTabHost:Landroid/widget/TabHost;

.field private mTabListener:Landroid/widget/TabHost$OnTabChangeListener;

.field private mTabWidget:Landroid/widget/TabWidget;

.field private mToState:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/android/exsettings/InstrumentedPreferenceActivity;-><init>()V

    .line 92
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/exsettings/IccLockSettings;->mDialogState:I

    .line 118
    new-instance v0, Lcom/android/exsettings/IccLockSettings$1;

    invoke-direct {v0, p0}, Lcom/android/exsettings/IccLockSettings$1;-><init>(Lcom/android/exsettings/IccLockSettings;)V

    iput-object v0, p0, Lcom/android/exsettings/IccLockSettings;->mHandler:Landroid/os/Handler;

    .line 137
    new-instance v0, Lcom/android/exsettings/IccLockSettings$2;

    invoke-direct {v0, p0}, Lcom/android/exsettings/IccLockSettings$2;-><init>(Lcom/android/exsettings/IccLockSettings;)V

    iput-object v0, p0, Lcom/android/exsettings/IccLockSettings;->mSimStateReceiver:Landroid/content/BroadcastReceiver;

    .line 489
    new-instance v0, Lcom/android/exsettings/IccLockSettings$3;

    invoke-direct {v0, p0}, Lcom/android/exsettings/IccLockSettings$3;-><init>(Lcom/android/exsettings/IccLockSettings;)V

    iput-object v0, p0, Lcom/android/exsettings/IccLockSettings;->mTabListener:Landroid/widget/TabHost$OnTabChangeListener;

    .line 504
    new-instance v0, Lcom/android/exsettings/IccLockSettings$4;

    invoke-direct {v0, p0}, Lcom/android/exsettings/IccLockSettings$4;-><init>(Lcom/android/exsettings/IccLockSettings;)V

    iput-object v0, p0, Lcom/android/exsettings/IccLockSettings;->mEmptyTabContent:Landroid/widget/TabHost$TabContentFactory;

    return-void
.end method

.method static synthetic access$000(Lcom/android/exsettings/IccLockSettings;ZI)V
    .locals 0
    .param p0, "x0"    # Lcom/android/exsettings/IccLockSettings;
    .param p1, "x1"    # Z
    .param p2, "x2"    # I

    .prologue
    .line 60
    invoke-direct {p0, p1, p2}, Lcom/android/exsettings/IccLockSettings;->iccLockChanged(ZI)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/exsettings/IccLockSettings;ZI)V
    .locals 0
    .param p0, "x0"    # Lcom/android/exsettings/IccLockSettings;
    .param p1, "x1"    # Z
    .param p2, "x2"    # I

    .prologue
    .line 60
    invoke-direct {p0, p1, p2}, Lcom/android/exsettings/IccLockSettings;->iccPinChanged(ZI)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/exsettings/IccLockSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/exsettings/IccLockSettings;

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/android/exsettings/IccLockSettings;->updatePreferences()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/exsettings/IccLockSettings;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/exsettings/IccLockSettings;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/exsettings/IccLockSettings;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/exsettings/IccLockSettings;Lcom/android/internal/telephony/Phone;)Lcom/android/internal/telephony/Phone;
    .locals 0
    .param p0, "x0"    # Lcom/android/exsettings/IccLockSettings;
    .param p1, "x1"    # Lcom/android/internal/telephony/Phone;

    .prologue
    .line 60
    iput-object p1, p0, Lcom/android/exsettings/IccLockSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/exsettings/IccLockSettings;)Landroid/widget/TabHost;
    .locals 1
    .param p0, "x0"    # Lcom/android/exsettings/IccLockSettings;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/exsettings/IccLockSettings;->mTabHost:Landroid/widget/TabHost;

    return-object v0
.end method

.method private buildTabSpec(Ljava/lang/String;Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;
    .locals 2
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "title"    # Ljava/lang/String;

    .prologue
    .line 512
    iget-object v0, p0, Lcom/android/exsettings/IccLockSettings;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v0, p1}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    iget-object v1, p0, Lcom/android/exsettings/IccLockSettings;->mEmptyTabContent:Landroid/widget/TabHost$TabContentFactory;

    invoke-virtual {v0, v1}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/widget/TabHost$TabContentFactory;)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    return-object v0
.end method

.method private getPinPasswordErrorMessage(I)Ljava/lang/String;
    .locals 6
    .param p1, "attemptsRemaining"    # I

    .prologue
    .line 459
    if-nez p1, :cond_0

    .line 460
    iget-object v1, p0, Lcom/android/exsettings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    const v2, 0x7f0c03c7

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 468
    .local v0, "displayMessage":Ljava/lang/String;
    :goto_0
    const-string v1, "IccLockSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getPinPasswordErrorMessage: attemptsRemaining="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " displayMessage="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 470
    return-object v0

    .line 461
    .end local v0    # "displayMessage":Ljava/lang/String;
    :cond_0
    if-lez p1, :cond_1

    .line 462
    iget-object v1, p0, Lcom/android/exsettings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    const v2, 0x7f130008

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, p1, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "displayMessage":Ljava/lang/String;
    goto :goto_0

    .line 466
    .end local v0    # "displayMessage":Ljava/lang/String;
    :cond_1
    iget-object v1, p0, Lcom/android/exsettings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    const v2, 0x7f0c03c8

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "displayMessage":Ljava/lang/String;
    goto :goto_0
.end method

.method private iccLockChanged(ZI)V
    .locals 3
    .param p1, "success"    # Z
    .param p2, "attemptsRemaining"    # I

    .prologue
    const/4 v2, 0x1

    .line 426
    if-eqz p1, :cond_0

    .line 427
    iget-object v0, p0, Lcom/android/exsettings/IccLockSettings;->mPinToggle:Landroid/preference/SwitchPreference;

    iget-boolean v1, p0, Lcom/android/exsettings/IccLockSettings;->mToState:Z

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 432
    :goto_0
    iget-object v0, p0, Lcom/android/exsettings/IccLockSettings;->mPinToggle:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v2}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 433
    invoke-direct {p0}, Lcom/android/exsettings/IccLockSettings;->resetDialogState()V

    .line 434
    return-void

    .line 429
    :cond_0
    invoke-direct {p0, p2}, Lcom/android/exsettings/IccLockSettings;->getPinPasswordErrorMessage(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method private iccPinChanged(ZI)V
    .locals 2
    .param p1, "success"    # Z
    .param p2, "attemptsRemaining"    # I

    .prologue
    .line 437
    if-nez p1, :cond_0

    .line 438
    invoke-direct {p0, p2}, Lcom/android/exsettings/IccLockSettings;->getPinPasswordErrorMessage(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 447
    :goto_0
    invoke-direct {p0}, Lcom/android/exsettings/IccLockSettings;->resetDialogState()V

    .line 448
    return-void

    .line 442
    :cond_0
    iget-object v0, p0, Lcom/android/exsettings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f0c03bd

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method private reasonablePin(Ljava/lang/String;)Z
    .locals 2
    .param p1, "pin"    # Ljava/lang/String;

    .prologue
    .line 474
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x4

    if-lt v0, v1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x8

    if-le v0, v1, :cond_1

    .line 475
    :cond_0
    const/4 v0, 0x0

    .line 477
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private resetDialogState()V
    .locals 1

    .prologue
    .line 482
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/exsettings/IccLockSettings;->mError:Ljava/lang/String;

    .line 483
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/exsettings/IccLockSettings;->mDialogState:I

    .line 484
    const-string v0, ""

    iput-object v0, p0, Lcom/android/exsettings/IccLockSettings;->mPin:Ljava/lang/String;

    .line 485
    invoke-direct {p0}, Lcom/android/exsettings/IccLockSettings;->setDialogValues()V

    .line 486
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/exsettings/IccLockSettings;->mDialogState:I

    .line 487
    return-void
.end method

.method private setDialogValues()V
    .locals 4

    .prologue
    const v3, 0x7f0c03b9

    .line 328
    iget-object v1, p0, Lcom/android/exsettings/IccLockSettings;->mPinDialog:Lcom/android/exsettings/EditPinPreference;

    iget-object v2, p0, Lcom/android/exsettings/IccLockSettings;->mPin:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/exsettings/EditPinPreference;->setText(Ljava/lang/String;)V

    .line 329
    const-string v0, ""

    .line 330
    .local v0, "message":Ljava/lang/String;
    iget v1, p0, Lcom/android/exsettings/IccLockSettings;->mDialogState:I

    packed-switch v1, :pswitch_data_0

    .line 350
    :goto_0
    iget-object v1, p0, Lcom/android/exsettings/IccLockSettings;->mError:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 351
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/exsettings/IccLockSettings;->mError:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 352
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/exsettings/IccLockSettings;->mError:Ljava/lang/String;

    .line 354
    :cond_0
    iget-object v1, p0, Lcom/android/exsettings/IccLockSettings;->mPinDialog:Lcom/android/exsettings/EditPinPreference;

    invoke-virtual {v1, v0}, Lcom/android/exsettings/EditPinPreference;->setDialogMessage(Ljava/lang/CharSequence;)V

    .line 355
    return-void

    .line 332
    :pswitch_0
    iget-object v1, p0, Lcom/android/exsettings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    const v2, 0x7f0c03b3

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 333
    iget-object v2, p0, Lcom/android/exsettings/IccLockSettings;->mPinDialog:Lcom/android/exsettings/EditPinPreference;

    iget-boolean v1, p0, Lcom/android/exsettings/IccLockSettings;->mToState:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/exsettings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    const v3, 0x7f0c03b4

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-virtual {v2, v1}, Lcom/android/exsettings/EditPinPreference;->setDialogTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/exsettings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    const v3, 0x7f0c03b5

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 338
    :pswitch_1
    iget-object v1, p0, Lcom/android/exsettings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    const v2, 0x7f0c03b6

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 339
    iget-object v1, p0, Lcom/android/exsettings/IccLockSettings;->mPinDialog:Lcom/android/exsettings/EditPinPreference;

    iget-object v2, p0, Lcom/android/exsettings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/exsettings/EditPinPreference;->setDialogTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 342
    :pswitch_2
    iget-object v1, p0, Lcom/android/exsettings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    const v2, 0x7f0c03b7

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 343
    iget-object v1, p0, Lcom/android/exsettings/IccLockSettings;->mPinDialog:Lcom/android/exsettings/EditPinPreference;

    iget-object v2, p0, Lcom/android/exsettings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/exsettings/EditPinPreference;->setDialogTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 346
    :pswitch_3
    iget-object v1, p0, Lcom/android/exsettings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    const v2, 0x7f0c03b8

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 347
    iget-object v1, p0, Lcom/android/exsettings/IccLockSettings;->mPinDialog:Lcom/android/exsettings/EditPinPreference;

    iget-object v2, p0, Lcom/android/exsettings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/exsettings/EditPinPreference;->setDialogTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 330
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private showPinDialog()V
    .locals 1

    .prologue
    .line 319
    iget v0, p0, Lcom/android/exsettings/IccLockSettings;->mDialogState:I

    if-nez v0, :cond_0

    .line 325
    :goto_0
    return-void

    .line 322
    :cond_0
    invoke-direct {p0}, Lcom/android/exsettings/IccLockSettings;->setDialogValues()V

    .line 324
    iget-object v0, p0, Lcom/android/exsettings/IccLockSettings;->mPinDialog:Lcom/android/exsettings/EditPinPreference;

    invoke-virtual {v0}, Lcom/android/exsettings/EditPinPreference;->showPinDialog()V

    goto :goto_0
.end method

.method private tryChangeIccLockState()V
    .locals 4

    .prologue
    .line 419
    iget-object v1, p0, Lcom/android/exsettings/IccLockSettings;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x64

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 420
    .local v0, "callback":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/exsettings/IccLockSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/exsettings/IccLockSettings;->mToState:Z

    iget-object v3, p0, Lcom/android/exsettings/IccLockSettings;->mPin:Ljava/lang/String;

    invoke-interface {v1, v2, v3, v0}, Lcom/android/internal/telephony/IccCard;->setIccLockEnabled(ZLjava/lang/String;Landroid/os/Message;)V

    .line 422
    iget-object v1, p0, Lcom/android/exsettings/IccLockSettings;->mPinToggle:Landroid/preference/SwitchPreference;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 423
    return-void
.end method

.method private tryChangePin()V
    .locals 4

    .prologue
    .line 451
    iget-object v1, p0, Lcom/android/exsettings/IccLockSettings;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x65

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 452
    .local v0, "callback":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/exsettings/IccLockSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v1

    iget-object v2, p0, Lcom/android/exsettings/IccLockSettings;->mOldPin:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/exsettings/IccLockSettings;->mNewPin:Ljava/lang/String;

    invoke-interface {v1, v2, v3, v0}, Lcom/android/internal/telephony/IccCard;->changeIccLockPassword(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 454
    return-void
.end method

.method private updatePreferences()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 236
    iget-object v0, p0, Lcom/android/exsettings/IccLockSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    if-eqz v0, :cond_1

    .line 237
    iget-object v0, p0, Lcom/android/exsettings/IccLockSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/IccCard;->getState()Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->READY:Lcom/android/internal/telephony/IccCardConstants$State;

    if-eq v0, v1, :cond_0

    .line 240
    iget-object v0, p0, Lcom/android/exsettings/IccLockSettings;->mPinToggle:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v2}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 241
    iget-object v0, p0, Lcom/android/exsettings/IccLockSettings;->mPinDialog:Lcom/android/exsettings/EditPinPreference;

    invoke-virtual {v0, v2}, Lcom/android/exsettings/EditPinPreference;->setEnabled(Z)V

    .line 246
    :goto_0
    iget-object v0, p0, Lcom/android/exsettings/IccLockSettings;->mPinToggle:Landroid/preference/SwitchPreference;

    iget-object v1, p0, Lcom/android/exsettings/IccLockSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/IccCard;->getIccLockEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 254
    :goto_1
    return-void

    .line 243
    :cond_0
    iget-object v0, p0, Lcom/android/exsettings/IccLockSettings;->mPinToggle:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v3}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 244
    iget-object v0, p0, Lcom/android/exsettings/IccLockSettings;->mPinDialog:Lcom/android/exsettings/EditPinPreference;

    invoke-virtual {v0, v3}, Lcom/android/exsettings/EditPinPreference;->setEnabled(Z)V

    goto :goto_0

    .line 249
    :cond_1
    iget-object v0, p0, Lcom/android/exsettings/IccLockSettings;->mPinToggle:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v2}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 251
    iget-object v0, p0, Lcom/android/exsettings/IccLockSettings;->mPinDialog:Lcom/android/exsettings/EditPinPreference;

    invoke-virtual {v0, v2}, Lcom/android/exsettings/EditPinPreference;->setEnabled(Z)V

    .line 252
    iget-object v0, p0, Lcom/android/exsettings/IccLockSettings;->mPinToggle:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v2}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    goto :goto_1
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 258
    const/16 v0, 0x38

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 14
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 161
    invoke-super {p0, p1}, Lcom/android/exsettings/InstrumentedPreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 162
    invoke-virtual {p0}, Lcom/android/exsettings/IccLockSettings;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 163
    .local v0, "context":Landroid/content/Context;
    const-string v7, "phone"

    invoke-virtual {v0, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/telephony/TelephonyManager;

    .line 165
    .local v6, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->getSimCount()I

    move-result v2

    .line 167
    .local v2, "numSims":I
    invoke-static {}, Lcom/android/exsettings/Utils;->isMonkeyRunning()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 168
    invoke-virtual {p0}, Lcom/android/exsettings/IccLockSettings;->finish()V

    .line 233
    :goto_0
    return-void

    .line 172
    :cond_0
    const v7, 0x7f08004f

    invoke-virtual {p0, v7}, Lcom/android/exsettings/IccLockSettings;->addPreferencesFromResource(I)V

    .line 174
    const-string v7, "sim_pin"

    invoke-virtual {p0, v7}, Lcom/android/exsettings/IccLockSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Lcom/android/exsettings/EditPinPreference;

    iput-object v7, p0, Lcom/android/exsettings/IccLockSettings;->mPinDialog:Lcom/android/exsettings/EditPinPreference;

    .line 175
    const-string v7, "sim_toggle"

    invoke-virtual {p0, v7}, Lcom/android/exsettings/IccLockSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/SwitchPreference;

    iput-object v7, p0, Lcom/android/exsettings/IccLockSettings;->mPinToggle:Landroid/preference/SwitchPreference;

    .line 176
    if-eqz p1, :cond_1

    const-string v7, "dialogState"

    invoke-virtual {p1, v7}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 177
    const-string v7, "dialogState"

    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    iput v7, p0, Lcom/android/exsettings/IccLockSettings;->mDialogState:I

    .line 178
    const-string v7, "dialogPin"

    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/exsettings/IccLockSettings;->mPin:Ljava/lang/String;

    .line 179
    const-string v7, "dialogError"

    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/exsettings/IccLockSettings;->mError:Ljava/lang/String;

    .line 180
    const-string v7, "enableState"

    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v7

    iput-boolean v7, p0, Lcom/android/exsettings/IccLockSettings;->mToState:Z

    .line 183
    iget v7, p0, Lcom/android/exsettings/IccLockSettings;->mDialogState:I

    packed-switch v7, :pswitch_data_0

    .line 200
    :cond_1
    :goto_1
    iget-object v7, p0, Lcom/android/exsettings/IccLockSettings;->mPinDialog:Lcom/android/exsettings/EditPinPreference;

    invoke-virtual {v7, p0}, Lcom/android/exsettings/EditPinPreference;->setOnPinEnteredListener(Lcom/android/exsettings/EditPinPreference$OnPinEnteredListener;)V

    .line 203
    invoke-virtual {p0}, Lcom/android/exsettings/IccLockSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v7

    invoke-virtual {v7, v12}, Landroid/preference/PreferenceScreen;->setPersistent(Z)V

    .line 205
    if-le v2, v13, :cond_5

    .line 206
    const v7, 0x7f04007f

    invoke-virtual {p0, v7}, Lcom/android/exsettings/IccLockSettings;->setContentView(I)V

    .line 208
    const v7, 0x1020012

    invoke-virtual {p0, v7}, Lcom/android/exsettings/IccLockSettings;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TabHost;

    iput-object v7, p0, Lcom/android/exsettings/IccLockSettings;->mTabHost:Landroid/widget/TabHost;

    .line 209
    const v7, 0x1020013

    invoke-virtual {p0, v7}, Lcom/android/exsettings/IccLockSettings;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TabWidget;

    iput-object v7, p0, Lcom/android/exsettings/IccLockSettings;->mTabWidget:Landroid/widget/TabWidget;

    .line 210
    const v7, 0x102000a

    invoke-virtual {p0, v7}, Lcom/android/exsettings/IccLockSettings;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ListView;

    iput-object v7, p0, Lcom/android/exsettings/IccLockSettings;->mListView:Landroid/widget/ListView;

    .line 212
    iget-object v7, p0, Lcom/android/exsettings/IccLockSettings;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v7}, Landroid/widget/TabHost;->setup()V

    .line 213
    iget-object v7, p0, Lcom/android/exsettings/IccLockSettings;->mTabHost:Landroid/widget/TabHost;

    iget-object v8, p0, Lcom/android/exsettings/IccLockSettings;->mTabListener:Landroid/widget/TabHost$OnTabChangeListener;

    invoke-virtual {v7, v8}, Landroid/widget/TabHost;->setOnTabChangedListener(Landroid/widget/TabHost$OnTabChangeListener;)V

    .line 214
    iget-object v7, p0, Lcom/android/exsettings/IccLockSettings;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v7}, Landroid/widget/TabHost;->clearAllTabs()V

    .line 216
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v4

    .line 217
    .local v4, "sm":Landroid/telephony/SubscriptionManager;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    if-ge v1, v2, :cond_3

    .line 218
    invoke-virtual {v4, v1}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoForSimSlotIndex(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v5

    .line 219
    .local v5, "subInfo":Landroid/telephony/SubscriptionInfo;
    iget-object v8, p0, Lcom/android/exsettings/IccLockSettings;->mTabHost:Landroid/widget/TabHost;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    if-nez v5, :cond_2

    const v7, 0x7f0c09d4

    new-array v10, v13, [Ljava/lang/Object;

    add-int/lit8 v11, v1, 0x1

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v12

    invoke-virtual {v0, v7, v10}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    :goto_3
    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v9, v7}, Lcom/android/exsettings/IccLockSettings;->buildTabSpec(Ljava/lang/String;Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v7

    invoke-virtual {v8, v7}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 217
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 185
    .end local v1    # "i":I
    .end local v4    # "sm":Landroid/telephony/SubscriptionManager;
    .end local v5    # "subInfo":Landroid/telephony/SubscriptionInfo;
    :pswitch_0
    const-string v7, "oldPinCode"

    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/exsettings/IccLockSettings;->mOldPin:Ljava/lang/String;

    goto :goto_1

    .line 189
    :pswitch_1
    const-string v7, "oldPinCode"

    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/exsettings/IccLockSettings;->mOldPin:Ljava/lang/String;

    .line 190
    const-string v7, "newPinCode"

    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/exsettings/IccLockSettings;->mNewPin:Ljava/lang/String;

    goto/16 :goto_1

    .line 219
    .restart local v1    # "i":I
    .restart local v4    # "sm":Landroid/telephony/SubscriptionManager;
    .restart local v5    # "subInfo":Landroid/telephony/SubscriptionInfo;
    :cond_2
    invoke-virtual {v5}, Landroid/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v7

    goto :goto_3

    .line 224
    .end local v5    # "subInfo":Landroid/telephony/SubscriptionInfo;
    :cond_3
    invoke-virtual {v4, v12}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoForSimSlotIndex(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v3

    .line 226
    .local v3, "sir":Landroid/telephony/SubscriptionInfo;
    if-nez v3, :cond_4

    const/4 v7, 0x0

    :goto_4
    iput-object v7, p0, Lcom/android/exsettings/IccLockSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 231
    .end local v1    # "i":I
    .end local v3    # "sir":Landroid/telephony/SubscriptionInfo;
    .end local v4    # "sm":Landroid/telephony/SubscriptionManager;
    :goto_5
    invoke-virtual {p0}, Lcom/android/exsettings/IccLockSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    iput-object v7, p0, Lcom/android/exsettings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    .line 232
    invoke-direct {p0}, Lcom/android/exsettings/IccLockSettings;->updatePreferences()V

    goto/16 :goto_0

    .line 226
    .restart local v1    # "i":I
    .restart local v3    # "sir":Landroid/telephony/SubscriptionInfo;
    .restart local v4    # "sm":Landroid/telephony/SubscriptionManager;
    :cond_4
    invoke-virtual {v3}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v7

    invoke-static {v7}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v7

    invoke-static {v7}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v7

    goto :goto_4

    .line 229
    .end local v1    # "i":I
    .end local v3    # "sir":Landroid/telephony/SubscriptionInfo;
    .end local v4    # "sm":Landroid/telephony/SubscriptionManager;
    :cond_5
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v7

    iput-object v7, p0, Lcom/android/exsettings/IccLockSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    goto :goto_5

    .line 183
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 280
    invoke-super {p0}, Lcom/android/exsettings/InstrumentedPreferenceActivity;->onPause()V

    .line 281
    iget-object v0, p0, Lcom/android/exsettings/IccLockSettings;->mSimStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/exsettings/IccLockSettings;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 282
    return-void
.end method

.method public onPinEntered(Lcom/android/exsettings/EditPinPreference;Z)V
    .locals 4
    .param p1, "preference"    # Lcom/android/exsettings/EditPinPreference;
    .param p2, "positiveResult"    # Z

    .prologue
    const/4 v3, 0x3

    const/4 v2, 0x0

    .line 358
    if-nez p2, :cond_0

    .line 359
    invoke-direct {p0}, Lcom/android/exsettings/IccLockSettings;->resetDialogState()V

    .line 399
    :goto_0
    return-void

    .line 363
    :cond_0
    invoke-virtual {p1}, Lcom/android/exsettings/EditPinPreference;->getText()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exsettings/IccLockSettings;->mPin:Ljava/lang/String;

    .line 364
    iget-object v0, p0, Lcom/android/exsettings/IccLockSettings;->mPin:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/exsettings/IccLockSettings;->reasonablePin(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 366
    iget-object v0, p0, Lcom/android/exsettings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f0c03ba

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exsettings/IccLockSettings;->mError:Ljava/lang/String;

    .line 367
    invoke-direct {p0}, Lcom/android/exsettings/IccLockSettings;->showPinDialog()V

    goto :goto_0

    .line 370
    :cond_1
    iget v0, p0, Lcom/android/exsettings/IccLockSettings;->mDialogState:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 372
    :pswitch_0
    invoke-direct {p0}, Lcom/android/exsettings/IccLockSettings;->tryChangeIccLockState()V

    goto :goto_0

    .line 375
    :pswitch_1
    iget-object v0, p0, Lcom/android/exsettings/IccLockSettings;->mPin:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/exsettings/IccLockSettings;->mOldPin:Ljava/lang/String;

    .line 376
    iput v3, p0, Lcom/android/exsettings/IccLockSettings;->mDialogState:I

    .line 377
    iput-object v2, p0, Lcom/android/exsettings/IccLockSettings;->mError:Ljava/lang/String;

    .line 378
    iput-object v2, p0, Lcom/android/exsettings/IccLockSettings;->mPin:Ljava/lang/String;

    .line 379
    invoke-direct {p0}, Lcom/android/exsettings/IccLockSettings;->showPinDialog()V

    goto :goto_0

    .line 382
    :pswitch_2
    iget-object v0, p0, Lcom/android/exsettings/IccLockSettings;->mPin:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/exsettings/IccLockSettings;->mNewPin:Ljava/lang/String;

    .line 383
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/exsettings/IccLockSettings;->mDialogState:I

    .line 384
    iput-object v2, p0, Lcom/android/exsettings/IccLockSettings;->mPin:Ljava/lang/String;

    .line 385
    invoke-direct {p0}, Lcom/android/exsettings/IccLockSettings;->showPinDialog()V

    goto :goto_0

    .line 388
    :pswitch_3
    iget-object v0, p0, Lcom/android/exsettings/IccLockSettings;->mPin:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/exsettings/IccLockSettings;->mNewPin:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 389
    iget-object v0, p0, Lcom/android/exsettings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f0c03bb

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exsettings/IccLockSettings;->mError:Ljava/lang/String;

    .line 390
    iput v3, p0, Lcom/android/exsettings/IccLockSettings;->mDialogState:I

    .line 391
    iput-object v2, p0, Lcom/android/exsettings/IccLockSettings;->mPin:Ljava/lang/String;

    .line 392
    invoke-direct {p0}, Lcom/android/exsettings/IccLockSettings;->showPinDialog()V

    goto :goto_0

    .line 394
    :cond_2
    iput-object v2, p0, Lcom/android/exsettings/IccLockSettings;->mError:Ljava/lang/String;

    .line 395
    invoke-direct {p0}, Lcom/android/exsettings/IccLockSettings;->tryChangePin()V

    goto :goto_0

    .line 370
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 4
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 402
    iget-object v2, p0, Lcom/android/exsettings/IccLockSettings;->mPinToggle:Landroid/preference/SwitchPreference;

    if-ne p2, v2, :cond_2

    .line 404
    iget-object v2, p0, Lcom/android/exsettings/IccLockSettings;->mPinToggle:Landroid/preference/SwitchPreference;

    invoke-virtual {v2}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/exsettings/IccLockSettings;->mToState:Z

    .line 406
    iget-object v2, p0, Lcom/android/exsettings/IccLockSettings;->mPinToggle:Landroid/preference/SwitchPreference;

    iget-boolean v3, p0, Lcom/android/exsettings/IccLockSettings;->mToState:Z

    if-nez v3, :cond_0

    move v0, v1

    :cond_0
    invoke-virtual {v2, v0}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 407
    iput v1, p0, Lcom/android/exsettings/IccLockSettings;->mDialogState:I

    .line 408
    invoke-direct {p0}, Lcom/android/exsettings/IccLockSettings;->showPinDialog()V

    :cond_1
    move v0, v1

    .line 413
    :goto_0
    return v0

    .line 409
    :cond_2
    iget-object v2, p0, Lcom/android/exsettings/IccLockSettings;->mPinDialog:Lcom/android/exsettings/EditPinPreference;

    if-ne p2, v2, :cond_1

    .line 410
    const/4 v1, 0x2

    iput v1, p0, Lcom/android/exsettings/IccLockSettings;->mDialogState:I

    goto :goto_0
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 263
    invoke-super {p0}, Lcom/android/exsettings/InstrumentedPreferenceActivity;->onResume()V

    .line 267
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 268
    .local v0, "filter":Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/android/exsettings/IccLockSettings;->mSimStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/android/exsettings/IccLockSettings;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 270
    iget v1, p0, Lcom/android/exsettings/IccLockSettings;->mDialogState:I

    if-eqz v1, :cond_0

    .line 271
    invoke-direct {p0}, Lcom/android/exsettings/IccLockSettings;->showPinDialog()V

    .line 276
    :goto_0
    return-void

    .line 274
    :cond_0
    invoke-direct {p0}, Lcom/android/exsettings/IccLockSettings;->resetDialogState()V

    goto :goto_0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "out"    # Landroid/os/Bundle;

    .prologue
    .line 291
    iget-object v0, p0, Lcom/android/exsettings/IccLockSettings;->mPinDialog:Lcom/android/exsettings/EditPinPreference;

    invoke-virtual {v0}, Lcom/android/exsettings/EditPinPreference;->isDialogOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 292
    const-string v0, "dialogState"

    iget v1, p0, Lcom/android/exsettings/IccLockSettings;->mDialogState:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 293
    const-string v0, "dialogPin"

    iget-object v1, p0, Lcom/android/exsettings/IccLockSettings;->mPinDialog:Lcom/android/exsettings/EditPinPreference;

    invoke-virtual {v1}, Lcom/android/exsettings/EditPinPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    const-string v0, "dialogError"

    iget-object v1, p0, Lcom/android/exsettings/IccLockSettings;->mError:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    const-string v0, "enableState"

    iget-boolean v1, p0, Lcom/android/exsettings/IccLockSettings;->mToState:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 298
    iget v0, p0, Lcom/android/exsettings/IccLockSettings;->mDialogState:I

    packed-switch v0, :pswitch_data_0

    .line 316
    :goto_0
    return-void

    .line 300
    :pswitch_0
    const-string v0, "oldPinCode"

    iget-object v1, p0, Lcom/android/exsettings/IccLockSettings;->mOldPin:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 304
    :pswitch_1
    const-string v0, "oldPinCode"

    iget-object v1, p0, Lcom/android/exsettings/IccLockSettings;->mOldPin:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    const-string v0, "newPinCode"

    iget-object v1, p0, Lcom/android/exsettings/IccLockSettings;->mNewPin:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 314
    :cond_0
    invoke-super {p0, p1}, Lcom/android/exsettings/InstrumentedPreferenceActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    goto :goto_0

    .line 298
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
