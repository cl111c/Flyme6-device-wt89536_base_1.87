.class public Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;
.super Ljava/lang/Object;
.source "KeyguardServiceWrapper.java"

# interfaces
.implements Lcom/android/internal/policy/IKeyguardService;


# instance fields
.field private TAG:Ljava/lang/String;

.field private mKeyguardStateMonitor:Lcom/android/server/policy/keyguard/KeyguardStateMonitor;

.field private mService:Lcom/android/internal/policy/IKeyguardService;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/policy/IKeyguardService;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Lcom/android/internal/policy/IKeyguardService;

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const-string v0, "KeyguardServiceWrapper"

    iput-object v0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->TAG:Ljava/lang/String;

    .line 43
    iput-object p2, p0, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->mService:Lcom/android/internal/policy/IKeyguardService;

    .line 44
    new-instance v0, Lcom/android/server/policy/keyguard/KeyguardStateMonitor;

    invoke-direct {v0, p1, p2}, Lcom/android/server/policy/keyguard/KeyguardStateMonitor;-><init>(Landroid/content/Context;Lcom/android/internal/policy/IKeyguardService;)V

    iput-object v0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->mKeyguardStateMonitor:Lcom/android/server/policy/keyguard/KeyguardStateMonitor;

    .line 45
    return-void
.end method


# virtual methods
.method public addStateMonitorCallback(Lcom/android/internal/policy/IKeyguardStateCallback;)V
    .locals 3
    .param p1, "callback"    # Lcom/android/internal/policy/IKeyguardStateCallback;

    .prologue
    .line 77
    :try_start_0
    iget-object v1, p0, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->mService:Lcom/android/internal/policy/IKeyguardService;

    invoke-interface {v1, p1}, Lcom/android/internal/policy/IKeyguardService;->addStateMonitorCallback(Lcom/android/internal/policy/IKeyguardStateCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    :goto_0
    return-void

    .line 78
    :catch_0
    move-exception v0

    .line 79
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v1, p0, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->TAG:Ljava/lang/String;

    const-string v2, "Remote Exception"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 241
    iget-object v0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->mService:Lcom/android/internal/policy/IKeyguardService;

    invoke-interface {v0}, Lcom/android/internal/policy/IKeyguardService;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public dismiss()V
    .locals 3

    .prologue
    .line 86
    :try_start_0
    iget-object v1, p0, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->mService:Lcom/android/internal/policy/IKeyguardService;

    invoke-interface {v1}, Lcom/android/internal/policy/IKeyguardService;->dismiss()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 90
    :goto_0
    return-void

    .line 87
    :catch_0
    move-exception v0

    .line 88
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v1, p0, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->TAG:Ljava/lang/String;

    const-string v2, "Remote Exception"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public doKeyguardTimeout(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "options"    # Landroid/os/Bundle;

    .prologue
    .line 196
    :try_start_0
    iget-object v1, p0, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->mService:Lcom/android/internal/policy/IKeyguardService;

    invoke-interface {v1, p1}, Lcom/android/internal/policy/IKeyguardService;->doKeyguardTimeout(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 200
    :goto_0
    return-void

    .line 197
    :catch_0
    move-exception v0

    .line 198
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v1, p0, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->TAG:Ljava/lang/String;

    const-string v2, "Remote Exception"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 1
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 257
    iget-object v0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->mKeyguardStateMonitor:Lcom/android/server/policy/keyguard/KeyguardStateMonitor;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/policy/keyguard/KeyguardStateMonitor;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 258
    return-void
.end method

.method public isInputRestricted()Z
    .locals 1

    .prologue
    .line 253
    iget-object v0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->mKeyguardStateMonitor:Lcom/android/server/policy/keyguard/KeyguardStateMonitor;

    invoke-virtual {v0}, Lcom/android/server/policy/keyguard/KeyguardStateMonitor;->isInputRestricted()Z

    move-result v0

    return v0
.end method

.method public isSecure()Z
    .locals 1

    .prologue
    .line 249
    iget-object v0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->mKeyguardStateMonitor:Lcom/android/server/policy/keyguard/KeyguardStateMonitor;

    invoke-virtual {v0}, Lcom/android/server/policy/keyguard/KeyguardStateMonitor;->isSecure()Z

    move-result v0

    return v0
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    .line 245
    iget-object v0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->mKeyguardStateMonitor:Lcom/android/server/policy/keyguard/KeyguardStateMonitor;

    invoke-virtual {v0}, Lcom/android/server/policy/keyguard/KeyguardStateMonitor;->isShowing()Z

    move-result v0

    return v0
.end method

.method public keyguardDone(ZZ)V
    .locals 3
    .param p1, "authenticated"    # Z
    .param p2, "wakeup"    # Z

    .prologue
    .line 59
    :try_start_0
    iget-object v1, p0, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->mService:Lcom/android/internal/policy/IKeyguardService;

    invoke-interface {v1, p1, p2}, Lcom/android/internal/policy/IKeyguardService;->keyguardDone(ZZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    :goto_0
    return-void

    .line 60
    :catch_0
    move-exception v0

    .line 61
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v1, p0, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->TAG:Ljava/lang/String;

    const-string v2, "Remote Exception"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onActivityDrawn()V
    .locals 3

    .prologue
    .line 233
    :try_start_0
    iget-object v1, p0, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->mService:Lcom/android/internal/policy/IKeyguardService;

    invoke-interface {v1}, Lcom/android/internal/policy/IKeyguardService;->onActivityDrawn()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 237
    :goto_0
    return-void

    .line 234
    :catch_0
    move-exception v0

    .line 235
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v1, p0, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->TAG:Ljava/lang/String;

    const-string v2, "Remote Exception"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onBootCompleted()V
    .locals 3

    .prologue
    .line 215
    :try_start_0
    iget-object v1, p0, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->mService:Lcom/android/internal/policy/IKeyguardService;

    invoke-interface {v1}, Lcom/android/internal/policy/IKeyguardService;->onBootCompleted()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 219
    :goto_0
    return-void

    .line 216
    :catch_0
    move-exception v0

    .line 217
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v1, p0, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->TAG:Ljava/lang/String;

    const-string v2, "Remote Exception"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onDreamingStarted()V
    .locals 3

    .prologue
    .line 95
    :try_start_0
    iget-object v1, p0, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->mService:Lcom/android/internal/policy/IKeyguardService;

    invoke-interface {v1}, Lcom/android/internal/policy/IKeyguardService;->onDreamingStarted()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 99
    :goto_0
    return-void

    .line 96
    :catch_0
    move-exception v0

    .line 97
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v1, p0, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->TAG:Ljava/lang/String;

    const-string v2, "Remote Exception"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onDreamingStopped()V
    .locals 3

    .prologue
    .line 104
    :try_start_0
    iget-object v1, p0, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->mService:Lcom/android/internal/policy/IKeyguardService;

    invoke-interface {v1}, Lcom/android/internal/policy/IKeyguardService;->onDreamingStopped()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 108
    :goto_0
    return-void

    .line 105
    :catch_0
    move-exception v0

    .line 106
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v1, p0, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->TAG:Ljava/lang/String;

    const-string v2, "Remote Exception"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onFinishedGoingToSleep(I)V
    .locals 3
    .param p1, "reason"    # I

    .prologue
    .line 122
    :try_start_0
    iget-object v1, p0, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->mService:Lcom/android/internal/policy/IKeyguardService;

    invoke-interface {v1, p1}, Lcom/android/internal/policy/IKeyguardService;->onFinishedGoingToSleep(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 126
    :goto_0
    return-void

    .line 123
    :catch_0
    move-exception v0

    .line 124
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v1, p0, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->TAG:Ljava/lang/String;

    const-string v2, "Remote Exception"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onKeyguardGoingToSleep(Lcom/android/internal/policy/IKeyguardDrawnCallback;)V
    .locals 3
    .param p1, "callback"    # Lcom/android/internal/policy/IKeyguardDrawnCallback;

    .prologue
    .line 167
    :try_start_0
    iget-object v1, p0, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->mService:Lcom/android/internal/policy/IKeyguardService;

    if-eqz v1, :cond_0

    .line 168
    iget-object v1, p0, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->mService:Lcom/android/internal/policy/IKeyguardService;

    invoke-interface {v1, p1}, Lcom/android/internal/policy/IKeyguardService;->onKeyguardGoingToSleep(Lcom/android/internal/policy/IKeyguardDrawnCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 173
    :cond_0
    :goto_0
    return-void

    .line 170
    :catch_0
    move-exception v0

    .line 171
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v1, p0, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->TAG:Ljava/lang/String;

    const-string v2, "Remote Exception"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onScreenTurnedOff()V
    .locals 3

    .prologue
    .line 158
    :try_start_0
    iget-object v1, p0, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->mService:Lcom/android/internal/policy/IKeyguardService;

    invoke-interface {v1}, Lcom/android/internal/policy/IKeyguardService;->onScreenTurnedOff()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 162
    :goto_0
    return-void

    .line 159
    :catch_0
    move-exception v0

    .line 160
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v1, p0, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->TAG:Ljava/lang/String;

    const-string v2, "Remote Exception"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onScreenTurnedOn()V
    .locals 3

    .prologue
    .line 149
    :try_start_0
    iget-object v1, p0, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->mService:Lcom/android/internal/policy/IKeyguardService;

    invoke-interface {v1}, Lcom/android/internal/policy/IKeyguardService;->onScreenTurnedOn()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 153
    :goto_0
    return-void

    .line 150
    :catch_0
    move-exception v0

    .line 151
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v1, p0, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->TAG:Ljava/lang/String;

    const-string v2, "Remote Exception"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onScreenTurningOn(Lcom/android/internal/policy/IKeyguardDrawnCallback;)V
    .locals 3
    .param p1, "callback"    # Lcom/android/internal/policy/IKeyguardDrawnCallback;

    .prologue
    .line 140
    :try_start_0
    iget-object v1, p0, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->mService:Lcom/android/internal/policy/IKeyguardService;

    invoke-interface {v1, p1}, Lcom/android/internal/policy/IKeyguardService;->onScreenTurningOn(Lcom/android/internal/policy/IKeyguardDrawnCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 144
    :goto_0
    return-void

    .line 141
    :catch_0
    move-exception v0

    .line 142
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v1, p0, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->TAG:Ljava/lang/String;

    const-string v2, "Remote Exception"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onStartedGoingToSleep(I)V
    .locals 3
    .param p1, "reason"    # I

    .prologue
    .line 113
    :try_start_0
    iget-object v1, p0, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->mService:Lcom/android/internal/policy/IKeyguardService;

    invoke-interface {v1, p1}, Lcom/android/internal/policy/IKeyguardService;->onStartedGoingToSleep(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 117
    :goto_0
    return-void

    .line 114
    :catch_0
    move-exception v0

    .line 115
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v1, p0, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->TAG:Ljava/lang/String;

    const-string v2, "Remote Exception"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onStartedWakingUp()V
    .locals 3

    .prologue
    .line 131
    :try_start_0
    iget-object v1, p0, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->mService:Lcom/android/internal/policy/IKeyguardService;

    invoke-interface {v1}, Lcom/android/internal/policy/IKeyguardService;->onStartedWakingUp()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 135
    :goto_0
    return-void

    .line 132
    :catch_0
    move-exception v0

    .line 133
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v1, p0, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->TAG:Ljava/lang/String;

    const-string v2, "Remote Exception"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onSystemReady()V
    .locals 3

    .prologue
    .line 187
    :try_start_0
    iget-object v1, p0, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->mService:Lcom/android/internal/policy/IKeyguardService;

    invoke-interface {v1}, Lcom/android/internal/policy/IKeyguardService;->onSystemReady()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 191
    :goto_0
    return-void

    .line 188
    :catch_0
    move-exception v0

    .line 189
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v1, p0, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->TAG:Ljava/lang/String;

    const-string v2, "Remote Exception"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setCurrentUser(I)V
    .locals 3
    .param p1, "userId"    # I

    .prologue
    .line 204
    iget-object v1, p0, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->mKeyguardStateMonitor:Lcom/android/server/policy/keyguard/KeyguardStateMonitor;

    invoke-virtual {v1, p1}, Lcom/android/server/policy/keyguard/KeyguardStateMonitor;->setCurrentUser(I)V

    .line 206
    :try_start_0
    iget-object v1, p0, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->mService:Lcom/android/internal/policy/IKeyguardService;

    invoke-interface {v1, p1}, Lcom/android/internal/policy/IKeyguardService;->setCurrentUser(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 210
    :goto_0
    return-void

    .line 207
    :catch_0
    move-exception v0

    .line 208
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v1, p0, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->TAG:Ljava/lang/String;

    const-string v2, "Remote Exception"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setKeyguardEnabled(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .prologue
    .line 178
    :try_start_0
    iget-object v1, p0, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->mService:Lcom/android/internal/policy/IKeyguardService;

    invoke-interface {v1, p1}, Lcom/android/internal/policy/IKeyguardService;->setKeyguardEnabled(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 182
    :goto_0
    return-void

    .line 179
    :catch_0
    move-exception v0

    .line 180
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v1, p0, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->TAG:Ljava/lang/String;

    const-string v2, "Remote Exception"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setOccluded(Z)V
    .locals 3
    .param p1, "isOccluded"    # Z

    .prologue
    .line 68
    :try_start_0
    iget-object v1, p0, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->mService:Lcom/android/internal/policy/IKeyguardService;

    invoke-interface {v1, p1}, Lcom/android/internal/policy/IKeyguardService;->setOccluded(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    :goto_0
    return-void

    .line 69
    :catch_0
    move-exception v0

    .line 70
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v1, p0, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->TAG:Ljava/lang/String;

    const-string v2, "Remote Exception"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public startKeyguardExitAnimation(JJ)V
    .locals 3
    .param p1, "startTime"    # J
    .param p3, "fadeoutDuration"    # J

    .prologue
    .line 224
    :try_start_0
    iget-object v1, p0, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->mService:Lcom/android/internal/policy/IKeyguardService;

    invoke-interface {v1, p1, p2, p3, p4}, Lcom/android/internal/policy/IKeyguardService;->startKeyguardExitAnimation(JJ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 228
    :goto_0
    return-void

    .line 225
    :catch_0
    move-exception v0

    .line 226
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v1, p0, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->TAG:Ljava/lang/String;

    const-string v2, "Remote Exception"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public verifyUnlock(Lcom/android/internal/policy/IKeyguardExitCallback;)V
    .locals 3
    .param p1, "callback"    # Lcom/android/internal/policy/IKeyguardExitCallback;

    .prologue
    .line 50
    :try_start_0
    iget-object v1, p0, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->mService:Lcom/android/internal/policy/IKeyguardService;

    invoke-interface {v1, p1}, Lcom/android/internal/policy/IKeyguardService;->verifyUnlock(Lcom/android/internal/policy/IKeyguardExitCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    :goto_0
    return-void

    .line 51
    :catch_0
    move-exception v0

    .line 52
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v1, p0, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->TAG:Ljava/lang/String;

    const-string v2, "Remote Exception"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
