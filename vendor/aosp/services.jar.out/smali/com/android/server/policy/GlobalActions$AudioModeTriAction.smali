.class Lcom/android/server/policy/GlobalActions$AudioModeTriAction;
.super Lcom/android/server/policy/GlobalActions$AudioTriStateAction;
.source "GlobalActions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/GlobalActions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AudioModeTriAction"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/GlobalActions;


# direct methods
.method public constructor <init>(Lcom/android/server/policy/GlobalActions;)V
    .locals 7

    .prologue
    .line 1176
    iput-object p1, p0, Lcom/android/server/policy/GlobalActions$AudioModeTriAction;->this$0:Lcom/android/server/policy/GlobalActions;

    .line 1177
    const v1, 0x10804fe

    const v2, 0x10804ff

    const v3, 0x10804fd

    const v4, 0x1040123

    const v5, 0x1040124

    const v6, 0x1040122

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/server/policy/GlobalActions$AudioTriStateAction;-><init>(IIIIII)V

    .line 1183
    return-void
.end method


# virtual methods
.method onToggle(I)V
    .locals 3
    .param p1, "state"    # I

    .prologue
    const/4 v0, 0x2

    const/4 v1, 0x1

    .line 1186
    iget-object v2, p0, Lcom/android/server/policy/GlobalActions$AudioModeTriAction;->this$0:Lcom/android/server/policy/GlobalActions;

    # getter for: Lcom/android/server/policy/GlobalActions;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v2}, Lcom/android/server/policy/GlobalActions;->access$1700(Lcom/android/server/policy/GlobalActions;)Landroid/media/AudioManager;

    move-result-object v2

    if-ne p1, v0, :cond_0

    :goto_0
    invoke-virtual {v2, v0}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 1187
    return-void

    .line 1186
    :cond_0
    if-ne p1, v1, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public showBeforeProvisioning()Z
    .locals 1

    .prologue
    .line 1194
    const/4 v0, 0x0

    return v0
.end method

.method public showDuringKeyguard()Z
    .locals 1

    .prologue
    .line 1190
    const/4 v0, 0x1

    return v0
.end method
