.class Lcom/android/internal/app/WindowDecorActionBar$5;
.super Landroid/animation/AnimatorListenerAdapter;
.source "WindowDecorActionBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/app/WindowDecorActionBar;->hideTctBottomBar(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/app/WindowDecorActionBar;


# direct methods
.method constructor <init>(Lcom/android/internal/app/WindowDecorActionBar;)V
    .locals 0

    .prologue
    .line 523
    iput-object p1, p0, Lcom/android/internal/app/WindowDecorActionBar$5;->this$0:Lcom/android/internal/app/WindowDecorActionBar;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 526
    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar$5;->this$0:Lcom/android/internal/app/WindowDecorActionBar;

    # getter for: Lcom/android/internal/app/WindowDecorActionBar;->mSplitButtonBar:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/android/internal/app/WindowDecorActionBar;->access$700(Lcom/android/internal/app/WindowDecorActionBar;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 527
    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar$5;->this$0:Lcom/android/internal/app/WindowDecorActionBar;

    # getter for: Lcom/android/internal/app/WindowDecorActionBar;->mOverlayLayout:Lcom/android/internal/widget/ActionBarOverlayLayout;
    invoke-static {v0}, Lcom/android/internal/app/WindowDecorActionBar;->access$600(Lcom/android/internal/app/WindowDecorActionBar;)Lcom/android/internal/widget/ActionBarOverlayLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 528
    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar$5;->this$0:Lcom/android/internal/app/WindowDecorActionBar;

    # getter for: Lcom/android/internal/app/WindowDecorActionBar;->mOverlayLayout:Lcom/android/internal/widget/ActionBarOverlayLayout;
    invoke-static {v0}, Lcom/android/internal/app/WindowDecorActionBar;->access$600(Lcom/android/internal/app/WindowDecorActionBar;)Lcom/android/internal/widget/ActionBarOverlayLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->requestLayout()V

    .line 530
    :cond_0
    return-void
.end method
