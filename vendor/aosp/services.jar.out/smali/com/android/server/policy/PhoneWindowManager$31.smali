.class Lcom/android/server/policy/PhoneWindowManager$31;
.super Ljava/lang/Object;
.source "PhoneWindowManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/PhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/PhoneWindowManager;


# direct methods
.method constructor <init>(Lcom/android/server/policy/PhoneWindowManager;)V
    .locals 0

    .prologue
    .line 8009
    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManager$31;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 8012
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$31;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    # invokes: Lcom/android/server/policy/PhoneWindowManager;->startNavigation()I
    invoke-static {v0}, Lcom/android/server/policy/PhoneWindowManager;->access$3400(Lcom/android/server/policy/PhoneWindowManager;)I

    .line 8013
    return-void
.end method
