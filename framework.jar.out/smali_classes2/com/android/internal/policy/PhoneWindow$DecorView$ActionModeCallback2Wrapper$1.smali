.class Lcom/android/internal/policy/PhoneWindow$DecorView$ActionModeCallback2Wrapper$1;
.super Ljava/lang/Object;
.source "PhoneWindow.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/PhoneWindow$DecorView$ActionModeCallback2Wrapper;->onDestroyActionMode(Landroid/view/ActionMode;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/android/internal/policy/PhoneWindow$DecorView$ActionModeCallback2Wrapper;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/PhoneWindow$DecorView$ActionModeCallback2Wrapper;)V
    .locals 0

    .prologue
    .line 3613
    iput-object p1, p0, Lcom/android/internal/policy/PhoneWindow$DecorView$ActionModeCallback2Wrapper$1;->this$2:Lcom/android/internal/policy/PhoneWindow$DecorView$ActionModeCallback2Wrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 3632
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 3621
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow$DecorView$ActionModeCallback2Wrapper$1;->this$2:Lcom/android/internal/policy/PhoneWindow$DecorView$ActionModeCallback2Wrapper;

    iget-object v0, v0, Lcom/android/internal/policy/PhoneWindow$DecorView$ActionModeCallback2Wrapper;->this$1:Lcom/android/internal/policy/PhoneWindow$DecorView;

    # getter for: Lcom/android/internal/policy/PhoneWindow$DecorView;->mPrimaryActionModeView:Lcom/android/internal/widget/ActionBarContextView;
    invoke-static {v0}, Lcom/android/internal/policy/PhoneWindow$DecorView;->access$2500(Lcom/android/internal/policy/PhoneWindow$DecorView;)Lcom/android/internal/widget/ActionBarContextView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/ActionBarContextView;->setVisibility(I)V

    .line 3622
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow$DecorView$ActionModeCallback2Wrapper$1;->this$2:Lcom/android/internal/policy/PhoneWindow$DecorView$ActionModeCallback2Wrapper;

    iget-object v0, v0, Lcom/android/internal/policy/PhoneWindow$DecorView$ActionModeCallback2Wrapper;->this$1:Lcom/android/internal/policy/PhoneWindow$DecorView;

    # getter for: Lcom/android/internal/policy/PhoneWindow$DecorView;->mPrimaryActionModePopup:Landroid/widget/PopupWindow;
    invoke-static {v0}, Lcom/android/internal/policy/PhoneWindow$DecorView;->access$2600(Lcom/android/internal/policy/PhoneWindow$DecorView;)Landroid/widget/PopupWindow;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3623
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow$DecorView$ActionModeCallback2Wrapper$1;->this$2:Lcom/android/internal/policy/PhoneWindow$DecorView$ActionModeCallback2Wrapper;

    iget-object v0, v0, Lcom/android/internal/policy/PhoneWindow$DecorView$ActionModeCallback2Wrapper;->this$1:Lcom/android/internal/policy/PhoneWindow$DecorView;

    # getter for: Lcom/android/internal/policy/PhoneWindow$DecorView;->mPrimaryActionModePopup:Landroid/widget/PopupWindow;
    invoke-static {v0}, Lcom/android/internal/policy/PhoneWindow$DecorView;->access$2600(Lcom/android/internal/policy/PhoneWindow$DecorView;)Landroid/widget/PopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 3625
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow$DecorView$ActionModeCallback2Wrapper$1;->this$2:Lcom/android/internal/policy/PhoneWindow$DecorView$ActionModeCallback2Wrapper;

    iget-object v0, v0, Lcom/android/internal/policy/PhoneWindow$DecorView$ActionModeCallback2Wrapper;->this$1:Lcom/android/internal/policy/PhoneWindow$DecorView;

    # getter for: Lcom/android/internal/policy/PhoneWindow$DecorView;->mPrimaryActionModeView:Lcom/android/internal/widget/ActionBarContextView;
    invoke-static {v0}, Lcom/android/internal/policy/PhoneWindow$DecorView;->access$2500(Lcom/android/internal/policy/PhoneWindow$DecorView;)Lcom/android/internal/widget/ActionBarContextView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/widget/ActionBarContextView;->removeAllViews()V

    .line 3626
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow$DecorView$ActionModeCallback2Wrapper$1;->this$2:Lcom/android/internal/policy/PhoneWindow$DecorView$ActionModeCallback2Wrapper;

    iget-object v0, v0, Lcom/android/internal/policy/PhoneWindow$DecorView$ActionModeCallback2Wrapper;->this$1:Lcom/android/internal/policy/PhoneWindow$DecorView;

    const/4 v1, 0x0

    # setter for: Lcom/android/internal/policy/PhoneWindow$DecorView;->mFadeAnim:Landroid/animation/ObjectAnimator;
    invoke-static {v0, v1}, Lcom/android/internal/policy/PhoneWindow$DecorView;->access$2802(Lcom/android/internal/policy/PhoneWindow$DecorView;Landroid/animation/ObjectAnimator;)Landroid/animation/ObjectAnimator;

    .line 3627
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 3637
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 3617
    return-void
.end method
