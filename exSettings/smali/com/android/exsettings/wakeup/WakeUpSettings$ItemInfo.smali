.class Lcom/android/exsettings/wakeup/WakeUpSettings$ItemInfo;
.super Ljava/lang/Object;
.source "WakeUpSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exsettings/wakeup/WakeUpSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ItemInfo"
.end annotation


# instance fields
.field key:I

.field label:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/exsettings/wakeup/WakeUpSettings;


# direct methods
.method public constructor <init>(Lcom/android/exsettings/wakeup/WakeUpSettings;Ljava/lang/String;I)V
    .locals 0
    .param p2, "label"    # Ljava/lang/String;
    .param p3, "key"    # I

    .prologue
    .line 414
    iput-object p1, p0, Lcom/android/exsettings/wakeup/WakeUpSettings$ItemInfo;->this$0:Lcom/android/exsettings/wakeup/WakeUpSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 415
    iput-object p2, p0, Lcom/android/exsettings/wakeup/WakeUpSettings$ItemInfo;->label:Ljava/lang/String;

    .line 416
    iput p3, p0, Lcom/android/exsettings/wakeup/WakeUpSettings$ItemInfo;->key:I

    .line 417
    return-void
.end method
