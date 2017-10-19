.class Lcom/android/exsettings/keyboard/KeyBoardLightService$3;
.super Ljava/lang/Object;
.source "KeyBoardLightService.java"

# interfaces
.implements Ljava/lang/Runnable;


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
    .line 83
    iput-object p1, p0, Lcom/android/exsettings/keyboard/KeyBoardLightService$3;->this$0:Lcom/android/exsettings/keyboard/KeyBoardLightService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/exsettings/keyboard/KeyBoardLightService$3;->this$0:Lcom/android/exsettings/keyboard/KeyBoardLightService;

    const/4 v1, 0x1

    # invokes: Lcom/android/exsettings/keyboard/KeyBoardLightService;->checkLightOnOffStatus(Z)V
    invoke-static {v0, v1}, Lcom/android/exsettings/keyboard/KeyBoardLightService;->access$200(Lcom/android/exsettings/keyboard/KeyBoardLightService;Z)V

    .line 87
    return-void
.end method
