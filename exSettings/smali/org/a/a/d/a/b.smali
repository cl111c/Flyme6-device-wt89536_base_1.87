.class public final Lorg/a/a/d/a/b;
.super Lorg/a/a/d/a/a;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lorg/a/a/d/a/a;-><init>()V

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
