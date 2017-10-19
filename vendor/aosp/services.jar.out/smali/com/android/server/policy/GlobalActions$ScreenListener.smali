.class public Lcom/android/server/policy/GlobalActions$ScreenListener;
.super Landroid/view/OrientationEventListener;
.source "GlobalActions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/GlobalActions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ScreenListener"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 1593
    invoke-direct {p0, p1}, Landroid/view/OrientationEventListener;-><init>(Landroid/content/Context;)V

    .line 1595
    return-void
.end method


# virtual methods
.method public onOrientationChanged(I)V
    .locals 3
    .param p1, "arg0"    # I

    .prologue
    const/16 v2, 0xe1

    const/16 v1, 0x87

    .line 1600
    const/16 v0, 0x2d

    if-le p1, v0, :cond_0

    if-ge p1, v1, :cond_0

    .line 1601
    const/4 v0, 0x3

    # setter for: Lcom/android/server/policy/GlobalActions;->mOrientation:I
    invoke-static {v0}, Lcom/android/server/policy/GlobalActions;->access$1502(I)I

    .line 1609
    :goto_0
    return-void

    .line 1602
    :cond_0
    if-le p1, v1, :cond_1

    if-ge p1, v2, :cond_1

    .line 1603
    const/4 v0, 0x4

    # setter for: Lcom/android/server/policy/GlobalActions;->mOrientation:I
    invoke-static {v0}, Lcom/android/server/policy/GlobalActions;->access$1502(I)I

    goto :goto_0

    .line 1604
    :cond_1
    if-le p1, v2, :cond_2

    const/16 v0, 0x13b

    if-ge p1, v0, :cond_2

    .line 1605
    const/4 v0, 0x2

    # setter for: Lcom/android/server/policy/GlobalActions;->mOrientation:I
    invoke-static {v0}, Lcom/android/server/policy/GlobalActions;->access$1502(I)I

    goto :goto_0

    .line 1607
    :cond_2
    const/4 v0, 0x1

    # setter for: Lcom/android/server/policy/GlobalActions;->mOrientation:I
    invoke-static {v0}, Lcom/android/server/policy/GlobalActions;->access$1502(I)I

    goto :goto_0
.end method
