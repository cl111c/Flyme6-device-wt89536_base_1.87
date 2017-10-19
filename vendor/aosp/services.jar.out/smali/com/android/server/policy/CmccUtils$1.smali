.class final Lcom/android/server/policy/CmccUtils$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "CmccUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/CmccUtils;->shakeViewRotation(Landroid/view/View;IIF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field private mShakeCount:I

.field final synthetic val$h:I

.field final synthetic val$numOfShakes:I

.field final synthetic val$shakeAnim:Landroid/animation/AnimatorSet;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/View;IILandroid/animation/AnimatorSet;)V
    .locals 1

    .prologue
    .line 207
    iput-object p1, p0, Lcom/android/server/policy/CmccUtils$1;->val$view:Landroid/view/View;

    iput p2, p0, Lcom/android/server/policy/CmccUtils$1;->val$h:I

    iput p3, p0, Lcom/android/server/policy/CmccUtils$1;->val$numOfShakes:I

    iput-object p4, p0, Lcom/android/server/policy/CmccUtils$1;->val$shakeAnim:Landroid/animation/AnimatorSet;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 208
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/policy/CmccUtils$1;->mShakeCount:I

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 218
    iget v0, p0, Lcom/android/server/policy/CmccUtils$1;->mShakeCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/policy/CmccUtils$1;->mShakeCount:I

    .line 219
    iget v0, p0, Lcom/android/server/policy/CmccUtils$1;->mShakeCount:I

    iget v1, p0, Lcom/android/server/policy/CmccUtils$1;->val$numOfShakes:I

    if-ne v0, v1, :cond_0

    .line 220
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/policy/CmccUtils$1;->mShakeCount:I

    .line 221
    iget-object v0, p0, Lcom/android/server/policy/CmccUtils$1;->val$view:Landroid/view/View;

    iget v1, p0, Lcom/android/server/policy/CmccUtils$1;->val$h:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setPivotY(F)V

    .line 225
    :goto_0
    return-void

    .line 223
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/CmccUtils$1;->val$shakeAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_0
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 211
    iget v0, p0, Lcom/android/server/policy/CmccUtils$1;->mShakeCount:I

    if-nez v0, :cond_0

    .line 212
    iget-object v0, p0, Lcom/android/server/policy/CmccUtils$1;->val$view:Landroid/view/View;

    iget v1, p0, Lcom/android/server/policy/CmccUtils$1;->val$h:I

    int-to-float v1, v1

    const v2, 0x3f666666    # 0.9f

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->setPivotY(F)V

    .line 214
    :cond_0
    return-void
.end method
