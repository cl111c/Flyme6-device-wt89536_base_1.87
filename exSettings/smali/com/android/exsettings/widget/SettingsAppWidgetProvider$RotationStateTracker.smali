.class final Lcom/android/exsettings/widget/SettingsAppWidgetProvider$RotationStateTracker;
.super Lcom/android/exsettings/widget/SettingsAppWidgetProvider$StateTracker;
.source "SettingsAppWidgetProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exsettings/widget/SettingsAppWidgetProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "RotationStateTracker"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 607
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/exsettings/widget/SettingsAppWidgetProvider$StateTracker;-><init>(Lcom/android/exsettings/widget/SettingsAppWidgetProvider$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/exsettings/widget/SettingsAppWidgetProvider$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/exsettings/widget/SettingsAppWidgetProvider$1;

    .prologue
    .line 607
    invoke-direct {p0}, Lcom/android/exsettings/widget/SettingsAppWidgetProvider$RotationStateTracker;-><init>()V

    return-void
.end method


# virtual methods
.method public getActualState(Landroid/content/Context;)I
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 619
    invoke-static {p1}, Lcom/android/internal/view/RotationPolicy;->isRotationLocked(Landroid/content/Context;)Z

    move-result v0

    .line 620
    .local v0, "locked":Z
    const-string v1, "SettingsAppWidgetProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onClickRotationStatus:locked: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 621
    if-nez v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getButtonDescription()I
    .locals 1

    .prologue
    .line 611
    const v0, 0x7f0c07af

    return v0
.end method

.method public getButtonId()I
    .locals 1

    .prologue
    .line 609
    const v0, 0x7f12026a

    return v0
.end method

.method public getButtonImageId(Z)I
    .locals 1
    .param p1, "on"    # Z

    .prologue
    .line 613
    if-eqz p1, :cond_0

    const v0, 0x7f0200e3

    :goto_0
    return v0

    :cond_0
    const v0, 0x7f0200e2

    goto :goto_0
.end method

.method public getContainerId()I
    .locals 1

    .prologue
    .line 608
    const v0, 0x7f120269

    return v0
.end method

.method public getIndicatorId()I
    .locals 1

    .prologue
    .line 610
    const v0, 0x7f12026b

    return v0
.end method

.method public onActualStateChange(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "unused"    # Landroid/content/Intent;

    .prologue
    .line 626
    invoke-virtual {p0, p1}, Lcom/android/exsettings/widget/SettingsAppWidgetProvider$RotationStateTracker;->getActualState(Landroid/content/Context;)I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/exsettings/widget/SettingsAppWidgetProvider$RotationStateTracker;->setCurrentState(Landroid/content/Context;I)V

    .line 627
    return-void
.end method

.method public requestStateChange(Landroid/content/Context;Z)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "desiredState"    # Z

    .prologue
    .line 635
    new-instance v0, Lcom/android/exsettings/widget/SettingsAppWidgetProvider$RotationStateTracker$1;

    invoke-direct {v0, p0, p1}, Lcom/android/exsettings/widget/SettingsAppWidgetProvider$RotationStateTracker$1;-><init>(Lcom/android/exsettings/widget/SettingsAppWidgetProvider$RotationStateTracker;Landroid/content/Context;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/exsettings/widget/SettingsAppWidgetProvider$RotationStateTracker$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 664
    return-void
.end method
