.class public Lcom/android/exsettings/LowMemoryStorage;
.super Landroid/app/Activity;
.source "LowMemoryStorage.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field public final LOWMEMORY_MODE_THRESHOLD:I

.field private final TAG:Ljava/lang/String;

.field public TEST:J

.field private mDataFileStats:Landroid/os/StatFs;

.field private mDialog:Landroid/app/AlertDialog;

.field private mFreeMem:J

.field private mListener:Landroid/content/DialogInterface$OnClickListener;

.field private mString:Ljava/lang/String;

.field private reCreateDialog:Z

.field private receiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 54
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 55
    const-string v0, "LowMemoryStorage"

    iput-object v0, p0, Lcom/android/exsettings/LowMemoryStorage;->TAG:Ljava/lang/String;

    .line 56
    iput-object v1, p0, Lcom/android/exsettings/LowMemoryStorage;->mDialog:Landroid/app/AlertDialog;

    .line 60
    iput-object v1, p0, Lcom/android/exsettings/LowMemoryStorage;->receiver:Landroid/content/BroadcastReceiver;

    .line 62
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/exsettings/LowMemoryStorage;->reCreateDialog:Z

    .line 63
    iput-object v1, p0, Lcom/android/exsettings/LowMemoryStorage;->mString:Ljava/lang/String;

    .line 64
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/exsettings/LowMemoryStorage;->TEST:J

    .line 66
    const/high16 v0, 0xa00000

    iput v0, p0, Lcom/android/exsettings/LowMemoryStorage;->LOWMEMORY_MODE_THRESHOLD:I

    .line 88
    new-instance v0, Lcom/android/exsettings/LowMemoryStorage$2;

    invoke-direct {v0, p0}, Lcom/android/exsettings/LowMemoryStorage$2;-><init>(Lcom/android/exsettings/LowMemoryStorage;)V

    iput-object v0, p0, Lcom/android/exsettings/LowMemoryStorage;->mListener:Landroid/content/DialogInterface$OnClickListener;

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    const/16 v2, 0x400

    .line 70
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 71
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/exsettings/LowMemoryStorage;->requestWindowFeature(I)Z

    .line 72
    invoke-virtual {p0}, Lcom/android/exsettings/LowMemoryStorage;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v2, v2}, Landroid/view/Window;->setFlags(II)V

    .line 74
    new-instance v1, Landroid/os/StatFs;

    const-string v2, "/data"

    invoke-direct {v1, v2}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/exsettings/LowMemoryStorage;->mDataFileStats:Landroid/os/StatFs;

    .line 75
    invoke-virtual {p0}, Lcom/android/exsettings/LowMemoryStorage;->getWindow()Landroid/view/Window;

    move-result-object v1

    const v2, 0x106000d

    invoke-virtual {v1, v2}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 77
    new-instance v1, Lcom/android/exsettings/LowMemoryStorage$1;

    invoke-direct {v1, p0}, Lcom/android/exsettings/LowMemoryStorage$1;-><init>(Lcom/android/exsettings/LowMemoryStorage;)V

    iput-object v1, p0, Lcom/android/exsettings/LowMemoryStorage;->receiver:Landroid/content/BroadcastReceiver;

    .line 83
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 84
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "intent.action.EXTREMELY_MODE_THRESHOLD"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 85
    iget-object v1, p0, Lcom/android/exsettings/LowMemoryStorage;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/android/exsettings/LowMemoryStorage;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 86
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 171
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 172
    iget-object v0, p0, Lcom/android/exsettings/LowMemoryStorage;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/exsettings/LowMemoryStorage;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 173
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 163
    packed-switch p1, :pswitch_data_0

    .line 167
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    .line 165
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 163
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    .line 123
    const/4 v0, 0x0

    return v0
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 108
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 109
    invoke-virtual {p0}, Lcom/android/exsettings/LowMemoryStorage;->refreshDialog()V

    .line 110
    iget-object v0, p0, Lcom/android/exsettings/LowMemoryStorage;->mDialog:Landroid/app/AlertDialog;

    if-nez v0, :cond_0

    .line 111
    invoke-virtual {p0}, Lcom/android/exsettings/LowMemoryStorage;->finish()V

    .line 113
    :cond_0
    return-void
.end method

.method public onSearchRequested()Z
    .locals 1

    .prologue
    .line 117
    const/4 v0, 0x1

    return v0
.end method

.method public refreshDialog()V
    .locals 6

    .prologue
    .line 126
    iget-object v0, p0, Lcom/android/exsettings/LowMemoryStorage;->mDataFileStats:Landroid/os/StatFs;

    const-string v1, "/data"

    invoke-virtual {v0, v1}, Landroid/os/StatFs;->restat(Ljava/lang/String;)V

    .line 127
    iget-object v0, p0, Lcom/android/exsettings/LowMemoryStorage;->mDataFileStats:Landroid/os/StatFs;

    invoke-virtual {v0}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v0

    int-to-long v0, v0

    iget-object v2, p0, Lcom/android/exsettings/LowMemoryStorage;->mDataFileStats:Landroid/os/StatFs;

    invoke-virtual {v2}, Landroid/os/StatFs;->getBlockSize()I

    move-result v2

    int-to-long v2, v2

    mul-long/2addr v0, v2

    iget-wide v2, p0, Lcom/android/exsettings/LowMemoryStorage;->TEST:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/exsettings/LowMemoryStorage;->mFreeMem:J

    .line 129
    const-string v0, "LowMemoryStorage"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mFreeMem = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/exsettings/LowMemoryStorage;->mFreeMem:J

    const-wide/32 v4, 0x100000

    div-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "M mDialog == "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/exsettings/LowMemoryStorage;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " reCreateDialog = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/exsettings/LowMemoryStorage;->reCreateDialog:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/TctLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    iget-wide v0, p0, Lcom/android/exsettings/LowMemoryStorage;->mFreeMem:J

    const-wide/32 v2, 0xa00000

    cmp-long v0, v0, v2

    if-gez v0, :cond_4

    .line 132
    invoke-virtual {p0}, Lcom/android/exsettings/LowMemoryStorage;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0d0a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exsettings/LowMemoryStorage;->mString:Ljava/lang/String;

    .line 139
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/exsettings/LowMemoryStorage;->mDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    .line 140
    iget-object v0, p0, Lcom/android/exsettings/LowMemoryStorage;->mDialog:Landroid/app/AlertDialog;

    iget-object v1, p0, Lcom/android/exsettings/LowMemoryStorage;->mString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 143
    :cond_1
    iget-object v0, p0, Lcom/android/exsettings/LowMemoryStorage;->mDialog:Landroid/app/AlertDialog;

    if-nez v0, :cond_2

    .line 144
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0c0d0b

    invoke-virtual {p0, v1}, Lcom/android/exsettings/LowMemoryStorage;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/exsettings/LowMemoryStorage;->mString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c0d09

    invoke-virtual {p0, v1}, Lcom/android/exsettings/LowMemoryStorage;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iget-object v2, p0, Lcom/android/exsettings/LowMemoryStorage;->mListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c0d08

    invoke-virtual {p0, v1}, Lcom/android/exsettings/LowMemoryStorage;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iget-object v2, p0, Lcom/android/exsettings/LowMemoryStorage;->mListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/exsettings/LowMemoryStorage$3;

    invoke-direct {v1, p0}, Lcom/android/exsettings/LowMemoryStorage$3;-><init>(Lcom/android/exsettings/LowMemoryStorage;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exsettings/LowMemoryStorage;->mDialog:Landroid/app/AlertDialog;

    .line 157
    :cond_2
    iget-object v0, p0, Lcom/android/exsettings/LowMemoryStorage;->mDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/exsettings/LowMemoryStorage;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_3

    .line 158
    iget-object v0, p0, Lcom/android/exsettings/LowMemoryStorage;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 160
    :cond_3
    return-void

    .line 134
    :cond_4
    iget-object v0, p0, Lcom/android/exsettings/LowMemoryStorage;->mDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 135
    iget-object v0, p0, Lcom/android/exsettings/LowMemoryStorage;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    goto :goto_0
.end method
