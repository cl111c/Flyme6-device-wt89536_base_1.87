.class Lcom/android/exsettings/keyboard/KeyBoardLightService$2;
.super Landroid/os/Handler;
.source "KeyBoardLightService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exsettings/keyboard/KeyBoardLightService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/exsettings/keyboard/KeyBoardLightService;


# direct methods
.method constructor <init>(Lcom/android/exsettings/keyboard/KeyBoardLightService;)V
    .locals 0

    .prologue
    .line 72
    iput-object p1, p0, Lcom/android/exsettings/keyboard/KeyBoardLightService$2;->this$0:Lcom/android/exsettings/keyboard/KeyBoardLightService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 75
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 80
    :goto_0
    return-void

    .line 77
    :pswitch_0
    invoke-static {}, Lcom/android/exsettings/keyboard/LedLightFileUtil;->turnOffLight()V

    goto :goto_0

    .line 75
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
