.class final Lcom/android/server/policy/CmccUtils$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "CmccUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/CmccUtils;->shakeViewtranslationX(Landroid/view/View;IIF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field private mShakeCount:I

.field final synthetic val$numOfShakes:I

.field final synthetic val$shakeAnim:Landroid/animation/AnimatorSet;


# direct methods
.method constructor <init>(ILandroid/animation/AnimatorSet;)V
    .locals 1

    .prologue
    .line 249
    iput p1, p0, Lcom/android/server/policy/CmccUtils$2;->val$numOfShakes:I

    iput-object p2, p0, Lcom/android/server/policy/CmccUtils$2;->val$shakeAnim:Landroid/animation/AnimatorSet;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 250
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/policy/CmccUtils$2;->mShakeCount:I

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 253
    iget v0, p0, Lcom/android/server/policy/CmccUtils$2;->mShakeCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/policy/CmccUtils$2;->mShakeCount:I

    .line 254
    iget v0, p0, Lcom/android/server/policy/CmccUtils$2;->mShakeCount:I

    iget v1, p0, Lcom/android/server/policy/CmccUtils$2;->val$numOfShakes:I

    if-ne v0, v1, :cond_0

    .line 255
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/policy/CmccUtils$2;->mShakeCount:I

    .line 259
    :goto_0
    return-void

    .line 257
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/CmccUtils$2;->val$shakeAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_0
.end method
