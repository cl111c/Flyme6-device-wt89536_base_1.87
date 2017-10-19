.class Lcom/android/exsettings/widget/SettingsAppWidgetProvider$RotationStateTracker$1;
.super Landroid/os/AsyncTask;
.source "SettingsAppWidgetProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/exsettings/widget/SettingsAppWidgetProvider$RotationStateTracker;->requestStateChange(Landroid/content/Context;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/exsettings/widget/SettingsAppWidgetProvider$RotationStateTracker;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/android/exsettings/widget/SettingsAppWidgetProvider$RotationStateTracker;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 635
    iput-object p1, p0, Lcom/android/exsettings/widget/SettingsAppWidgetProvider$RotationStateTracker$1;->this$0:Lcom/android/exsettings/widget/SettingsAppWidgetProvider$RotationStateTracker;

    iput-object p2, p0, Lcom/android/exsettings/widget/SettingsAppWidgetProvider$RotationStateTracker$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 6
    .param p1, "args"    # [Ljava/lang/Void;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 650
    iget-object v1, p0, Lcom/android/exsettings/widget/SettingsAppWidgetProvider$RotationStateTracker$1;->val$context:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/internal/view/RotationPolicy;->isRotationLocked(Landroid/content/Context;)Z

    move-result v0

    .line 651
    .local v0, "locked":Z
    const-string v1, "SettingsAppWidgetProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "requestStateChange locked: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 652
    iget-object v4, p0, Lcom/android/exsettings/widget/SettingsAppWidgetProvider$RotationStateTracker$1;->val$context:Landroid/content/Context;

    if-nez v0, :cond_0

    move v1, v2

    :goto_0
    invoke-static {v4, v1}, Lcom/android/internal/view/RotationPolicy;->setRotationLockForAccessibility(Landroid/content/Context;Z)V

    .line 653
    if-nez v0, :cond_1

    :goto_1
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1

    :cond_0
    move v1, v3

    .line 652
    goto :goto_0

    :cond_1
    move v2, v3

    .line 653
    goto :goto_1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 635
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/exsettings/widget/SettingsAppWidgetProvider$RotationStateTracker$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 3
    .param p1, "result"    # Ljava/lang/Boolean;

    .prologue
    .line 658
    iget-object v1, p0, Lcom/android/exsettings/widget/SettingsAppWidgetProvider$RotationStateTracker$1;->this$0:Lcom/android/exsettings/widget/SettingsAppWidgetProvider$RotationStateTracker;

    iget-object v2, p0, Lcom/android/exsettings/widget/SettingsAppWidgetProvider$RotationStateTracker$1;->val$context:Landroid/content/Context;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v2, v0}, Lcom/android/exsettings/widget/SettingsAppWidgetProvider$RotationStateTracker;->setCurrentState(Landroid/content/Context;I)V

    .line 661
    iget-object v0, p0, Lcom/android/exsettings/widget/SettingsAppWidgetProvider$RotationStateTracker$1;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/exsettings/widget/SettingsAppWidgetProvider;->updateWidget(Landroid/content/Context;)V

    .line 662
    return-void

    .line 658
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 635
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/android/exsettings/widget/SettingsAppWidgetProvider$RotationStateTracker$1;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
