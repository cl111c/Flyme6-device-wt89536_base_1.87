.class public Lcom/android/exsettings/MasterClearConfirm;
.super Lcom/android/exsettings/InstrumentedFragment;
.source "MasterClearConfirm.java"


# instance fields
.field private mBatWarnning:Landroid/widget/TextView;

.field private mButton:Landroid/widget/Button;

.field private mConfirmMsg:Landroid/widget/TextView;

.field private mContentView:Landroid/view/View;

.field private mEraseSdCard:Z

.field private mFinalClickListener:Landroid/view/View$OnClickListener;

.field private mIntentFilter:Landroid/content/IntentFilter;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/android/exsettings/InstrumentedFragment;-><init>()V

    .line 73
    new-instance v0, Lcom/android/exsettings/MasterClearConfirm$1;

    invoke-direct {v0, p0}, Lcom/android/exsettings/MasterClearConfirm$1;-><init>(Lcom/android/exsettings/MasterClearConfirm;)V

    iput-object v0, p0, Lcom/android/exsettings/MasterClearConfirm;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 100
    new-instance v0, Lcom/android/exsettings/MasterClearConfirm$2;

    invoke-direct {v0, p0}, Lcom/android/exsettings/MasterClearConfirm$2;-><init>(Lcom/android/exsettings/MasterClearConfirm;)V

    iput-object v0, p0, Lcom/android/exsettings/MasterClearConfirm;->mFinalClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/exsettings/MasterClearConfirm;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/android/exsettings/MasterClearConfirm;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/exsettings/MasterClearConfirm;->mButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/exsettings/MasterClearConfirm;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/android/exsettings/MasterClearConfirm;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/exsettings/MasterClearConfirm;->mConfirmMsg:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/exsettings/MasterClearConfirm;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/android/exsettings/MasterClearConfirm;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/exsettings/MasterClearConfirm;->mBatWarnning:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/exsettings/MasterClearConfirm;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/exsettings/MasterClearConfirm;

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/android/exsettings/MasterClearConfirm;->doMasterClear()V

    return-void
.end method

.method private doMasterClear()V
    .locals 3

    .prologue
    .line 162
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MASTER_CLEAR"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 163
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 164
    const-string v1, "android.intent.extra.REASON"

    const-string v2, "MasterClearConfirm"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 165
    const-string v1, "android.intent.extra.WIPE_EXTERNAL_STORAGE"

    iget-boolean v2, p0, Lcom/android/exsettings/MasterClearConfirm;->mEraseSdCard:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 166
    invoke-virtual {p0}, Lcom/android/exsettings/MasterClearConfirm;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 168
    return-void
.end method

.method private establishFinalConfirmationState()V
    .locals 2

    .prologue
    .line 174
    iget-object v0, p0, Lcom/android/exsettings/MasterClearConfirm;->mContentView:Landroid/view/View;

    const v1, 0x7f120131

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/exsettings/MasterClearConfirm;->mFinalClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 176
    return-void
.end method

.method private setAccessibilityTitle()V
    .locals 5

    .prologue
    .line 211
    invoke-virtual {p0}, Lcom/android/exsettings/MasterClearConfirm;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    .line 212
    .local v2, "currentTitle":Ljava/lang/CharSequence;
    iget-object v3, p0, Lcom/android/exsettings/MasterClearConfirm;->mContentView:Landroid/view/View;

    const v4, 0x7f120130

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 214
    .local v1, "confirmationMessage":Landroid/widget/TextView;
    if-eqz v1, :cond_0

    .line 215
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 217
    .local v0, "accessibileText":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/exsettings/MasterClearConfirm;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v2, v0}, Lcom/android/exsettings/Utils;->createAccessibleSequence(Ljava/lang/CharSequence;Ljava/lang/String;)Landroid/text/SpannableString;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 219
    .end local v0    # "accessibileText":Ljava/lang/String;
    :cond_0
    return-void
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 232
    const/16 v0, 0x43

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 223
    invoke-super {p0, p1}, Lcom/android/exsettings/InstrumentedFragment;->onCreate(Landroid/os/Bundle;)V

    .line 225
    invoke-virtual {p0}, Lcom/android/exsettings/MasterClearConfirm;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 226
    .local v0, "args":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    const-string v1, "erase_sd"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, p0, Lcom/android/exsettings/MasterClearConfirm;->mEraseSdCard:Z

    .line 228
    return-void

    .line 226
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x0

    .line 181
    invoke-virtual {p0}, Lcom/android/exsettings/MasterClearConfirm;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    const-string v1, "no_factory_reset"

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 183
    const v0, 0x7f040091

    invoke-virtual {p1, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 195
    :goto_0
    return-object v0

    .line 185
    :cond_0
    const v0, 0x7f040090

    invoke-virtual {p1, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exsettings/MasterClearConfirm;->mContentView:Landroid/view/View;

    .line 186
    invoke-direct {p0}, Lcom/android/exsettings/MasterClearConfirm;->establishFinalConfirmationState()V

    .line 187
    invoke-direct {p0}, Lcom/android/exsettings/MasterClearConfirm;->setAccessibilityTitle()V

    .line 189
    iget-object v0, p0, Lcom/android/exsettings/MasterClearConfirm;->mContentView:Landroid/view/View;

    const v1, 0x7f120061

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/exsettings/MasterClearConfirm;->mBatWarnning:Landroid/widget/TextView;

    .line 190
    iget-object v0, p0, Lcom/android/exsettings/MasterClearConfirm;->mContentView:Landroid/view/View;

    const v1, 0x7f120130

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/exsettings/MasterClearConfirm;->mConfirmMsg:Landroid/widget/TextView;

    .line 191
    iget-object v0, p0, Lcom/android/exsettings/MasterClearConfirm;->mContentView:Landroid/view/View;

    const v1, 0x7f120131

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/exsettings/MasterClearConfirm;->mButton:Landroid/widget/Button;

    .line 192
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/android/exsettings/MasterClearConfirm;->mIntentFilter:Landroid/content/IntentFilter;

    .line 193
    iget-object v0, p0, Lcom/android/exsettings/MasterClearConfirm;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 195
    iget-object v0, p0, Lcom/android/exsettings/MasterClearConfirm;->mContentView:Landroid/view/View;

    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 205
    invoke-super {p0}, Lcom/android/exsettings/InstrumentedFragment;->onPause()V

    .line 206
    invoke-virtual {p0}, Lcom/android/exsettings/MasterClearConfirm;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/exsettings/MasterClearConfirm;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 207
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 200
    invoke-super {p0}, Lcom/android/exsettings/InstrumentedFragment;->onResume()V

    .line 201
    invoke-virtual {p0}, Lcom/android/exsettings/MasterClearConfirm;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/exsettings/MasterClearConfirm;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/exsettings/MasterClearConfirm;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 202
    return-void
.end method
