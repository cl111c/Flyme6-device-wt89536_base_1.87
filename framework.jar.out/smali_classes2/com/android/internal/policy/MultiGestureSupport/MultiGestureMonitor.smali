.class public Lcom/android/internal/policy/MultiGestureSupport/MultiGestureMonitor;
.super Ljava/lang/Object;
.source "MultiGestureMonitor.java"


# static fields
.field public static final ACTION_MULTI_FINGER_SCREEN_SHOT:Ljava/lang/String; = "android.intent.action.MULTI_FINGER_SCREEN_SHOT"

.field public static final MULTI_FINGER_SCREEN_SHOT_ENABLED:Ljava/lang/String; = "multi_finger_screen_shot_enabled"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final BASEVELOCOTY:F

.field private DBG:Z

.field private final HORIZONTAL_SLIDE_OFFSET_DISTANCEX:I

.field private final HORIZONTAL_SLIDE_OFFSET_DISTANCEY:I

.field private final SUPPORT_FINGER_COUNTS:I

.field private final TAG_EVENT:Ljava/lang/String;

.field private final VERTICAL_SLIDE_OFFSET_DISTANCEX:I

.field private final VERTICAL_SLIDE_OFFSET_DISTANCEY:I

.field private isSupportHorizontalSlide:Z

.field private mContext:Landroid/content/Context;

.field private mFingerScreenShotEnabled:Z

.field private mOldx0:F

.field private mOldx1:F

.field private mOldx2:F

.field private mOldy0:F

.field private mOldy1:F

.field private mOldy2:F

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private mVelocityX0:F

.field private mVelocityY0:F

.field private mode:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 27
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FingerScreenShotGesture/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/android/internal/policy/MultiGestureSupport/MultiGestureMonitor;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/policy/MultiGestureSupport/MultiGestureMonitor;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/16 v3, 0xa0

    const/4 v2, 0x0

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/internal/policy/MultiGestureSupport/MultiGestureMonitor;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/EventPoint"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/MultiGestureSupport/MultiGestureMonitor;->TAG_EVENT:Ljava/lang/String;

    .line 31
    iput-boolean v2, p0, Lcom/android/internal/policy/MultiGestureSupport/MultiGestureMonitor;->DBG:Z

    .line 32
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/MultiGestureSupport/MultiGestureMonitor;->isSupportHorizontalSlide:Z

    .line 37
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/internal/policy/MultiGestureSupport/MultiGestureMonitor;->SUPPORT_FINGER_COUNTS:I

    .line 38
    const/16 v0, 0x12c

    iput v0, p0, Lcom/android/internal/policy/MultiGestureSupport/MultiGestureMonitor;->HORIZONTAL_SLIDE_OFFSET_DISTANCEY:I

    .line 39
    iput v3, p0, Lcom/android/internal/policy/MultiGestureSupport/MultiGestureMonitor;->HORIZONTAL_SLIDE_OFFSET_DISTANCEX:I

    .line 40
    iput v3, p0, Lcom/android/internal/policy/MultiGestureSupport/MultiGestureMonitor;->VERTICAL_SLIDE_OFFSET_DISTANCEY:I

    .line 41
    const/16 v0, 0x50

    iput v0, p0, Lcom/android/internal/policy/MultiGestureSupport/MultiGestureMonitor;->VERTICAL_SLIDE_OFFSET_DISTANCEX:I

    .line 42
    const/high16 v0, 0x42340000    # 45.0f

    iput v0, p0, Lcom/android/internal/policy/MultiGestureSupport/MultiGestureMonitor;->BASEVELOCOTY:F

    .line 57
    iput-boolean v2, p0, Lcom/android/internal/policy/MultiGestureSupport/MultiGestureMonitor;->mFingerScreenShotEnabled:Z

    .line 79
    iput-object p1, p0, Lcom/android/internal/policy/MultiGestureSupport/MultiGestureMonitor;->mContext:Landroid/content/Context;

    .line 80
    return-void
.end method

.method private getFingerEnable()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 60
    iget-object v3, p0, Lcom/android/internal/policy/MultiGestureSupport/MultiGestureMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "multi_finger_screen_shot_enabled"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 61
    .local v0, "mFingerMode":I
    if-ne v0, v1, :cond_0

    .line 64
    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0
.end method

.method private notifyScreenshotGestureCompleted()V
    .locals 3

    .prologue
    .line 200
    iget-object v1, p0, Lcom/android/internal/policy/MultiGestureSupport/MultiGestureMonitor;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_0

    .line 201
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 202
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "android.intent.action.MULTI_FINGER_SCREEN_SHOT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 203
    iget-object v1, p0, Lcom/android/internal/policy/MultiGestureSupport/MultiGestureMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 204
    sget-object v1, Lcom/android/internal/policy/MultiGestureSupport/MultiGestureMonitor;->TAG:Ljava/lang/String;

    const-string v2, "sendBroadcast:android.intent.action.MULTI_FINGER_SCREEN_SHOT"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method private resetToInitValue()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 209
    iput v0, p0, Lcom/android/internal/policy/MultiGestureSupport/MultiGestureMonitor;->mOldx0:F

    .line 210
    iput v0, p0, Lcom/android/internal/policy/MultiGestureSupport/MultiGestureMonitor;->mOldy0:F

    .line 211
    iput v0, p0, Lcom/android/internal/policy/MultiGestureSupport/MultiGestureMonitor;->mOldx1:F

    .line 212
    iput v0, p0, Lcom/android/internal/policy/MultiGestureSupport/MultiGestureMonitor;->mOldy1:F

    .line 213
    iput v0, p0, Lcom/android/internal/policy/MultiGestureSupport/MultiGestureMonitor;->mOldx2:F

    .line 214
    iput v0, p0, Lcom/android/internal/policy/MultiGestureSupport/MultiGestureMonitor;->mOldy2:F

    .line 215
    return-void
.end method


# virtual methods
.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 13
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 83
    const/4 v2, 0x0

    .line 84
    .local v2, "handled":Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 85
    .local v0, "action":I
    and-int/lit16 v9, v0, 0xff

    packed-switch v9, :pswitch_data_0

    .line 195
    :cond_0
    :goto_0
    :pswitch_0
    sget-object v9, Lcom/android/internal/policy/MultiGestureSupport/MultiGestureMonitor;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v11, Lcom/android/internal/policy/MultiGestureSupport/MultiGestureMonitor;->TAG:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    .end local v2    # "handled":Z
    :goto_1
    return v2

    .line 87
    .restart local v2    # "handled":Z
    :pswitch_1
    iget-boolean v9, p0, Lcom/android/internal/policy/MultiGestureSupport/MultiGestureMonitor;->DBG:Z

    if-eqz v9, :cond_1

    .line 88
    sget-object v9, Lcom/android/internal/policy/MultiGestureSupport/MultiGestureMonitor;->TAG:Ljava/lang/String;

    const-string v10, "ACTION_DOWN"

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    :cond_1
    iget-object v9, p0, Lcom/android/internal/policy/MultiGestureSupport/MultiGestureMonitor;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v9, :cond_2

    .line 90
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v9

    iput-object v9, p0, Lcom/android/internal/policy/MultiGestureSupport/MultiGestureMonitor;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 94
    :goto_2
    iget-object v9, p0, Lcom/android/internal/policy/MultiGestureSupport/MultiGestureMonitor;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v9, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 95
    const/4 v9, 0x1

    iput v9, p0, Lcom/android/internal/policy/MultiGestureSupport/MultiGestureMonitor;->mode:I

    goto :goto_0

    .line 92
    :cond_2
    iget-object v9, p0, Lcom/android/internal/policy/MultiGestureSupport/MultiGestureMonitor;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v9}, Landroid/view/VelocityTracker;->clear()V

    goto :goto_2

    .line 98
    :pswitch_2
    iget-boolean v9, p0, Lcom/android/internal/policy/MultiGestureSupport/MultiGestureMonitor;->DBG:Z

    if-eqz v9, :cond_3

    .line 99
    sget-object v9, Lcom/android/internal/policy/MultiGestureSupport/MultiGestureMonitor;->TAG:Ljava/lang/String;

    const-string v10, "ACTION_MOVE"

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    :cond_3
    iget-object v9, p0, Lcom/android/internal/policy/MultiGestureSupport/MultiGestureMonitor;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v9, :cond_0

    .line 102
    iget-object v9, p0, Lcom/android/internal/policy/MultiGestureSupport/MultiGestureMonitor;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v9, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 103
    iget-object v9, p0, Lcom/android/internal/policy/MultiGestureSupport/MultiGestureMonitor;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v10, 0x3e8

    invoke-virtual {v9, v10}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 104
    iget-object v9, p0, Lcom/android/internal/policy/MultiGestureSupport/MultiGestureMonitor;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v9}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v9

    iput v9, p0, Lcom/android/internal/policy/MultiGestureSupport/MultiGestureMonitor;->mVelocityX0:F

    .line 105
    iget-object v9, p0, Lcom/android/internal/policy/MultiGestureSupport/MultiGestureMonitor;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v9}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v9

    iput v9, p0, Lcom/android/internal/policy/MultiGestureSupport/MultiGestureMonitor;->mVelocityY0:F

    goto :goto_0

    .line 110
    :pswitch_3
    iget-boolean v9, p0, Lcom/android/internal/policy/MultiGestureSupport/MultiGestureMonitor;->DBG:Z

    if-eqz v9, :cond_4

    .line 111
    sget-object v9, Lcom/android/internal/policy/MultiGestureSupport/MultiGestureMonitor;->TAG:Ljava/lang/String;

    const-string v10, "ACTION_POINTER_DOWN"

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    :cond_4
    iget v9, p0, Lcom/android/internal/policy/MultiGestureSupport/MultiGestureMonitor;->mode:I

    add-int/lit8 v9, v9, 0x1

    iput v9, p0, Lcom/android/internal/policy/MultiGestureSupport/MultiGestureMonitor;->mode:I

    .line 114
    iget v9, p0, Lcom/android/internal/policy/MultiGestureSupport/MultiGestureMonitor;->mode:I

    const/4 v10, 0x3

    if-ne v9, v10, :cond_0

    .line 116
    invoke-direct {p0}, Lcom/android/internal/policy/MultiGestureSupport/MultiGestureMonitor;->getFingerEnable()Z

    move-result v9

    iput-boolean v9, p0, Lcom/android/internal/policy/MultiGestureSupport/MultiGestureMonitor;->mFingerScreenShotEnabled:Z

    .line 117
    const-string v9, "istrue"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v11, p0, Lcom/android/internal/policy/MultiGestureSupport/MultiGestureMonitor;->mFingerScreenShotEnabled:Z

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    const/4 v9, 0x0

    :try_start_0
    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v9

    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->getX(I)F

    move-result v9

    iput v9, p0, Lcom/android/internal/policy/MultiGestureSupport/MultiGestureMonitor;->mOldx0:F

    .line 120
    const/4 v9, 0x0

    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v9

    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->getY(I)F

    move-result v9

    iput v9, p0, Lcom/android/internal/policy/MultiGestureSupport/MultiGestureMonitor;->mOldy0:F

    .line 121
    const/4 v9, 0x1

    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v9

    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->getX(I)F

    move-result v9

    iput v9, p0, Lcom/android/internal/policy/MultiGestureSupport/MultiGestureMonitor;->mOldx1:F

    .line 122
    const/4 v9, 0x1

    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v9

    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->getY(I)F

    move-result v9

    iput v9, p0, Lcom/android/internal/policy/MultiGestureSupport/MultiGestureMonitor;->mOldy1:F

    .line 123
    const/4 v9, 0x2

    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v9

    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->getX(I)F

    move-result v9

    iput v9, p0, Lcom/android/internal/policy/MultiGestureSupport/MultiGestureMonitor;->mOldx2:F

    .line 124
    const/4 v9, 0x2

    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v9

    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->getY(I)F

    move-result v9

    iput v9, p0, Lcom/android/internal/policy/MultiGestureSupport/MultiGestureMonitor;->mOldy2:F

    .line 126
    iget-boolean v9, p0, Lcom/android/internal/policy/MultiGestureSupport/MultiGestureMonitor;->DBG:Z

    if-eqz v9, :cond_0

    .line 127
    iget-object v9, p0, Lcom/android/internal/policy/MultiGestureSupport/MultiGestureMonitor;->TAG_EVENT:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "oldx0:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/android/internal/policy/MultiGestureSupport/MultiGestureMonitor;->mOldx0:F

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ",oldy0:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/android/internal/policy/MultiGestureSupport/MultiGestureMonitor;->mOldy0:F

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ",oldx1:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/android/internal/policy/MultiGestureSupport/MultiGestureMonitor;->mOldx1:F

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ",oldy1:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/android/internal/policy/MultiGestureSupport/MultiGestureMonitor;->mOldy1:F

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ",mOldx2="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/android/internal/policy/MultiGestureSupport/MultiGestureMonitor;->mOldx2:F

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ",mOldy2="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/android/internal/policy/MultiGestureSupport/MultiGestureMonitor;->mOldy2:F

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 131
    :catch_0
    move-exception v1

    .line 132
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto/16 :goto_0

    .line 137
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :pswitch_4
    iget-boolean v9, p0, Lcom/android/internal/policy/MultiGestureSupport/MultiGestureMonitor;->DBG:Z

    if-eqz v9, :cond_5

    .line 138
    sget-object v9, Lcom/android/internal/policy/MultiGestureSupport/MultiGestureMonitor;->TAG:Ljava/lang/String;

    const-string v10, "ACTION_POINTER_UP"

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    :cond_5
    iget v9, p0, Lcom/android/internal/policy/MultiGestureSupport/MultiGestureMonitor;->mode:I

    const/4 v10, 0x3

    if-ne v9, v10, :cond_8

    .line 142
    iget-boolean v9, p0, Lcom/android/internal/policy/MultiGestureSupport/MultiGestureMonitor;->mFingerScreenShotEnabled:Z

    if-nez v9, :cond_6

    .line 143
    const/4 v2, 0x0

    goto/16 :goto_1

    .line 146
    :cond_6
    const/4 v9, 0x0

    :try_start_1
    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v9

    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    .line 147
    .local v3, "newx0":F
    const/4 v9, 0x0

    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v9

    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->getY(I)F

    move-result v6

    .line 148
    .local v6, "newy0":F
    const/4 v9, 0x1

    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v9

    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    .line 149
    .local v4, "newx1":F
    const/4 v9, 0x1

    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v9

    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->getY(I)F

    move-result v7

    .line 150
    .local v7, "newy1":F
    const/4 v9, 0x2

    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v9

    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->getX(I)F

    move-result v5

    .line 151
    .local v5, "newx2":F
    const/4 v9, 0x2

    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v9

    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->getY(I)F

    move-result v8

    .line 153
    .local v8, "newy2":F
    iget-boolean v9, p0, Lcom/android/internal/policy/MultiGestureSupport/MultiGestureMonitor;->DBG:Z

    if-eqz v9, :cond_7

    .line 154
    iget-object v10, p0, Lcom/android/internal/policy/MultiGestureSupport/MultiGestureMonitor;->TAG_EVENT:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "newx0:"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v9, p0, Lcom/android/internal/policy/MultiGestureSupport/MultiGestureMonitor;->mOldx0:F

    sub-float v9, v3, v9

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v9

    const/high16 v12, 0x43200000    # 160.0f

    cmpl-float v9, v9, v12

    if-lez v9, :cond_9

    const/4 v9, 0x1

    :goto_3
    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, ",newy0:"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v9, p0, Lcom/android/internal/policy/MultiGestureSupport/MultiGestureMonitor;->mOldy0:F

    sub-float v9, v6, v9

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v9

    const/high16 v12, 0x43960000    # 300.0f

    cmpg-float v9, v9, v12

    if-gez v9, :cond_a

    const/4 v9, 0x1

    :goto_4
    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, ",newx1:"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v9, p0, Lcom/android/internal/policy/MultiGestureSupport/MultiGestureMonitor;->mVelocityX0:F

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v9

    const/high16 v12, 0x42340000    # 45.0f

    cmpl-float v9, v9, v12

    if-lez v9, :cond_b

    const/4 v9, 0x1

    :goto_5
    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, ",newy1:"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v9, p0, Lcom/android/internal/policy/MultiGestureSupport/MultiGestureMonitor;->mOldy0:F

    sub-float v9, v6, v9

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v9

    const/high16 v12, 0x43200000    # 160.0f

    cmpl-float v9, v9, v12

    if-lez v9, :cond_c

    const/4 v9, 0x1

    :goto_6
    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, ",newx2="

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v9, p0, Lcom/android/internal/policy/MultiGestureSupport/MultiGestureMonitor;->mOldx0:F

    sub-float v9, v3, v9

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v9

    const/high16 v12, 0x42a00000    # 80.0f

    cmpg-float v9, v9, v12

    if-gez v9, :cond_d

    const/4 v9, 0x1

    :goto_7
    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, ",newy2="

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v9, p0, Lcom/android/internal/policy/MultiGestureSupport/MultiGestureMonitor;->mVelocityY0:F

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v9

    const/high16 v12, 0x42340000    # 45.0f

    cmpl-float v9, v9, v12

    if-lez v9, :cond_e

    const/4 v9, 0x1

    :goto_8
    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v10, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    iget-object v9, p0, Lcom/android/internal/policy/MultiGestureSupport/MultiGestureMonitor;->TAG_EVENT:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "mVelocityX0="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/android/internal/policy/MultiGestureSupport/MultiGestureMonitor;->mVelocityX0:F

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ",mVelocityY0="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/android/internal/policy/MultiGestureSupport/MultiGestureMonitor;->mVelocityY0:F

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    :cond_7
    iget-boolean v9, p0, Lcom/android/internal/policy/MultiGestureSupport/MultiGestureMonitor;->isSupportHorizontalSlide:Z

    if-eqz v9, :cond_f

    .line 163
    iget v9, p0, Lcom/android/internal/policy/MultiGestureSupport/MultiGestureMonitor;->mOldx0:F

    sub-float v9, v3, v9

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v9

    const/high16 v10, 0x43200000    # 160.0f

    cmpl-float v9, v9, v10

    if-lez v9, :cond_8

    iget v9, p0, Lcom/android/internal/policy/MultiGestureSupport/MultiGestureMonitor;->mOldy0:F

    sub-float v9, v6, v9

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v9

    const/high16 v10, 0x43960000    # 300.0f

    cmpg-float v9, v9, v10

    if-gez v9, :cond_8

    iget v9, p0, Lcom/android/internal/policy/MultiGestureSupport/MultiGestureMonitor;->mVelocityX0:F

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v9

    const/high16 v10, 0x42340000    # 45.0f

    cmpl-float v9, v9, v10

    if-lez v9, :cond_8

    .line 166
    invoke-direct {p0}, Lcom/android/internal/policy/MultiGestureSupport/MultiGestureMonitor;->notifyScreenshotGestureCompleted()V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    .line 179
    .end local v3    # "newx0":F
    .end local v4    # "newx1":F
    .end local v5    # "newx2":F
    .end local v6    # "newy0":F
    .end local v7    # "newy1":F
    .end local v8    # "newy2":F
    :cond_8
    :goto_9
    iget v9, p0, Lcom/android/internal/policy/MultiGestureSupport/MultiGestureMonitor;->mode:I

    add-int/lit8 v9, v9, -0x1

    iput v9, p0, Lcom/android/internal/policy/MultiGestureSupport/MultiGestureMonitor;->mode:I

    goto/16 :goto_0

    .line 154
    .restart local v3    # "newx0":F
    .restart local v4    # "newx1":F
    .restart local v5    # "newx2":F
    .restart local v6    # "newy0":F
    .restart local v7    # "newy1":F
    .restart local v8    # "newy2":F
    :cond_9
    const/4 v9, 0x0

    goto/16 :goto_3

    :cond_a
    const/4 v9, 0x0

    goto/16 :goto_4

    :cond_b
    const/4 v9, 0x0

    goto/16 :goto_5

    :cond_c
    const/4 v9, 0x0

    goto/16 :goto_6

    :cond_d
    const/4 v9, 0x0

    goto/16 :goto_7

    :cond_e
    const/4 v9, 0x0

    goto :goto_8

    .line 169
    :cond_f
    :try_start_2
    iget v9, p0, Lcom/android/internal/policy/MultiGestureSupport/MultiGestureMonitor;->mOldy0:F

    sub-float v9, v6, v9

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v9

    const/high16 v10, 0x43200000    # 160.0f

    cmpl-float v9, v9, v10

    if-lez v9, :cond_8

    iget v9, p0, Lcom/android/internal/policy/MultiGestureSupport/MultiGestureMonitor;->mOldx0:F

    sub-float v9, v3, v9

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v9

    const/high16 v10, 0x42a00000    # 80.0f

    cmpg-float v9, v9, v10

    if-gez v9, :cond_8

    iget v9, p0, Lcom/android/internal/policy/MultiGestureSupport/MultiGestureMonitor;->mVelocityY0:F

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v9

    const/high16 v10, 0x42340000    # 45.0f

    cmpl-float v9, v9, v10

    if-lez v9, :cond_8

    .line 172
    invoke-direct {p0}, Lcom/android/internal/policy/MultiGestureSupport/MultiGestureMonitor;->notifyScreenshotGestureCompleted()V
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_9

    .line 175
    .end local v3    # "newx0":F
    .end local v4    # "newx1":F
    .end local v5    # "newx2":F
    .end local v6    # "newy0":F
    .end local v7    # "newy1":F
    .end local v8    # "newy2":F
    :catch_1
    move-exception v1

    .line 176
    .restart local v1    # "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_9

    .line 184
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :pswitch_5
    iget-boolean v9, p0, Lcom/android/internal/policy/MultiGestureSupport/MultiGestureMonitor;->DBG:Z

    if-eqz v9, :cond_10

    .line 185
    sget-object v9, Lcom/android/internal/policy/MultiGestureSupport/MultiGestureMonitor;->TAG:Ljava/lang/String;

    const-string v10, "ACTION_CANCEL"

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    :cond_10
    const/4 v9, 0x0

    iput v9, p0, Lcom/android/internal/policy/MultiGestureSupport/MultiGestureMonitor;->mode:I

    .line 188
    iget-object v9, p0, Lcom/android/internal/policy/MultiGestureSupport/MultiGestureMonitor;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v9, :cond_11

    .line 189
    iget-object v9, p0, Lcom/android/internal/policy/MultiGestureSupport/MultiGestureMonitor;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v9}, Landroid/view/VelocityTracker;->recycle()V

    .line 190
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/android/internal/policy/MultiGestureSupport/MultiGestureMonitor;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 192
    :cond_11
    invoke-direct {p0}, Lcom/android/internal/policy/MultiGestureSupport/MultiGestureMonitor;->resetToInitValue()V

    goto/16 :goto_0

    .line 85
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_5
        :pswitch_2
        :pswitch_5
        :pswitch_0
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
