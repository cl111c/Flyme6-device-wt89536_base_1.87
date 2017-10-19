.class Lcom/android/exsettings/accessibility/ToggleAccessibilityServicePreferenceFragment$3;
.super Ljava/lang/Object;
.source "ToggleAccessibilityServicePreferenceFragment.java"

# interfaces
.implements Lcom/android/exsettings/widget/ToggleSwitch$OnBeforeCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/exsettings/accessibility/ToggleAccessibilityServicePreferenceFragment;->onInstallSwitchBarToggleSwitch()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/exsettings/accessibility/ToggleAccessibilityServicePreferenceFragment;


# direct methods
.method constructor <init>(Lcom/android/exsettings/accessibility/ToggleAccessibilityServicePreferenceFragment;)V
    .locals 0

    .prologue
    .line 395
    iput-object p1, p0, Lcom/android/exsettings/accessibility/ToggleAccessibilityServicePreferenceFragment$3;->this$0:Lcom/android/exsettings/accessibility/ToggleAccessibilityServicePreferenceFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBeforeCheckedChanged(Lcom/android/exsettings/widget/ToggleSwitch;Z)Z
    .locals 4
    .param p1, "toggleSwitch"    # Lcom/android/exsettings/widget/ToggleSwitch;
    .param p2, "checked"    # Z

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 398
    if-eqz p2, :cond_0

    .line 399
    iget-object v0, p0, Lcom/android/exsettings/accessibility/ToggleAccessibilityServicePreferenceFragment$3;->this$0:Lcom/android/exsettings/accessibility/ToggleAccessibilityServicePreferenceFragment;

    iget-object v0, v0, Lcom/android/exsettings/accessibility/ToggleAccessibilityServicePreferenceFragment;->mSwitchBar:Lcom/android/exsettings/widget/SwitchBar;

    invoke-virtual {v0, v3}, Lcom/android/exsettings/widget/SwitchBar;->setCheckedInternal(Z)V

    .line 400
    iget-object v0, p0, Lcom/android/exsettings/accessibility/ToggleAccessibilityServicePreferenceFragment$3;->this$0:Lcom/android/exsettings/accessibility/ToggleAccessibilityServicePreferenceFragment;

    invoke-virtual {v0}, Lcom/android/exsettings/accessibility/ToggleAccessibilityServicePreferenceFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "checked"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 401
    iget-object v0, p0, Lcom/android/exsettings/accessibility/ToggleAccessibilityServicePreferenceFragment$3;->this$0:Lcom/android/exsettings/accessibility/ToggleAccessibilityServicePreferenceFragment;

    # invokes: Lcom/android/exsettings/accessibility/ToggleAccessibilityServicePreferenceFragment;->showDialog(I)V
    invoke-static {v0, v2}, Lcom/android/exsettings/accessibility/ToggleAccessibilityServicePreferenceFragment;->access$100(Lcom/android/exsettings/accessibility/ToggleAccessibilityServicePreferenceFragment;I)V

    .line 407
    :goto_0
    return v2

    .line 403
    :cond_0
    iget-object v0, p0, Lcom/android/exsettings/accessibility/ToggleAccessibilityServicePreferenceFragment$3;->this$0:Lcom/android/exsettings/accessibility/ToggleAccessibilityServicePreferenceFragment;

    iget-object v0, v0, Lcom/android/exsettings/accessibility/ToggleAccessibilityServicePreferenceFragment;->mSwitchBar:Lcom/android/exsettings/widget/SwitchBar;

    invoke-virtual {v0, v2}, Lcom/android/exsettings/widget/SwitchBar;->setCheckedInternal(Z)V

    .line 404
    iget-object v0, p0, Lcom/android/exsettings/accessibility/ToggleAccessibilityServicePreferenceFragment$3;->this$0:Lcom/android/exsettings/accessibility/ToggleAccessibilityServicePreferenceFragment;

    invoke-virtual {v0}, Lcom/android/exsettings/accessibility/ToggleAccessibilityServicePreferenceFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "checked"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 405
    iget-object v0, p0, Lcom/android/exsettings/accessibility/ToggleAccessibilityServicePreferenceFragment$3;->this$0:Lcom/android/exsettings/accessibility/ToggleAccessibilityServicePreferenceFragment;

    const/4 v1, 0x2

    # invokes: Lcom/android/exsettings/accessibility/ToggleAccessibilityServicePreferenceFragment;->showDialog(I)V
    invoke-static {v0, v1}, Lcom/android/exsettings/accessibility/ToggleAccessibilityServicePreferenceFragment;->access$200(Lcom/android/exsettings/accessibility/ToggleAccessibilityServicePreferenceFragment;I)V

    goto :goto_0
.end method
