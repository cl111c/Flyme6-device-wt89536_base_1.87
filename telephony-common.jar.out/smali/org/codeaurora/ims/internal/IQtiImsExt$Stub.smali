.class public abstract Lorg/codeaurora/ims/internal/IQtiImsExt$Stub;
.super Landroid/os/Binder;
.source "IQtiImsExt.java"

# interfaces
.implements Lorg/codeaurora/ims/internal/IQtiImsExt;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/codeaurora/ims/internal/IQtiImsExt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/codeaurora/ims/internal/IQtiImsExt$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "org.codeaurora.ims.internal.IQtiImsExt"

.field static final TRANSACTION_getCallForwardUncondTimer:I = 0x2

.field static final TRANSACTION_getHandoverConfig:I = 0x9

.field static final TRANSACTION_getImsPhoneId:I = 0x8

.field static final TRANSACTION_getPacketCount:I = 0x3

.field static final TRANSACTION_getPacketErrorCount:I = 0x4

.field static final TRANSACTION_registerForViceRefreshInfo:I = 0x6

.field static final TRANSACTION_sendCallDeflectRequest:I = 0x5

.field static final TRANSACTION_sendCallTransferRequest:I = 0x7

.field static final TRANSACTION_setCallForwardUncondTimer:I = 0x1

.field static final TRANSACTION_setHandoverConfig:I = 0xa


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 19
    const-string v0, "org.codeaurora.ims.internal.IQtiImsExt"

    invoke-virtual {p0, p0, v0}, Lorg/codeaurora/ims/internal/IQtiImsExt$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 20
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lorg/codeaurora/ims/internal/IQtiImsExt;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 27
    if-nez p0, :cond_0

    .line 28
    const/4 v0, 0x0

    .line 34
    :goto_0
    return-object v0

    .line 30
    :cond_0
    const-string v1, "org.codeaurora.ims.internal.IQtiImsExt"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 31
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lorg/codeaurora/ims/internal/IQtiImsExt;

    if-eqz v1, :cond_1

    .line 32
    check-cast v0, Lorg/codeaurora/ims/internal/IQtiImsExt;

    goto :goto_0

    .line 34
    :cond_1
    new-instance v0, Lorg/codeaurora/ims/internal/IQtiImsExt$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lorg/codeaurora/ims/internal/IQtiImsExt$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 38
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 11
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 42
    sparse-switch p1, :sswitch_data_0

    .line 162
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    :goto_0
    return v0

    .line 46
    :sswitch_0
    const-string v0, "org.codeaurora.ims.internal.IQtiImsExt"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 47
    const/4 v0, 0x1

    goto :goto_0

    .line 51
    :sswitch_1
    const-string v0, "org.codeaurora.ims.internal.IQtiImsExt"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 53
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 55
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 57
    .local v2, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 59
    .local v3, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 61
    .local v4, "_arg3":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 63
    .local v5, "_arg4":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 65
    .local v6, "_arg5":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 67
    .local v7, "_arg6":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 69
    .local v8, "_arg7":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lorg/codeaurora/ims/internal/IQtiImsExtListener$Stub;->asInterface(Landroid/os/IBinder;)Lorg/codeaurora/ims/internal/IQtiImsExtListener;

    move-result-object v9

    .local v9, "_arg8":Lorg/codeaurora/ims/internal/IQtiImsExtListener;
    move-object v0, p0

    .line 70
    invoke-virtual/range {v0 .. v9}, Lorg/codeaurora/ims/internal/IQtiImsExt$Stub;->setCallForwardUncondTimer(IIIIIIILjava/lang/String;Lorg/codeaurora/ims/internal/IQtiImsExtListener;)V

    .line 71
    const/4 v0, 0x1

    goto :goto_0

    .line 75
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":I
    .end local v5    # "_arg4":I
    .end local v6    # "_arg5":I
    .end local v7    # "_arg6":I
    .end local v8    # "_arg7":Ljava/lang/String;
    .end local v9    # "_arg8":Lorg/codeaurora/ims/internal/IQtiImsExtListener;
    :sswitch_2
    const-string v0, "org.codeaurora.ims.internal.IQtiImsExt"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 77
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 79
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 81
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lorg/codeaurora/ims/internal/IQtiImsExtListener$Stub;->asInterface(Landroid/os/IBinder;)Lorg/codeaurora/ims/internal/IQtiImsExtListener;

    move-result-object v3

    .line 82
    .local v3, "_arg2":Lorg/codeaurora/ims/internal/IQtiImsExtListener;
    invoke-virtual {p0, v1, v2, v3}, Lorg/codeaurora/ims/internal/IQtiImsExt$Stub;->getCallForwardUncondTimer(IILorg/codeaurora/ims/internal/IQtiImsExtListener;)V

    .line 83
    const/4 v0, 0x1

    goto :goto_0

    .line 87
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Lorg/codeaurora/ims/internal/IQtiImsExtListener;
    :sswitch_3
    const-string v0, "org.codeaurora.ims.internal.IQtiImsExt"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 89
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lorg/codeaurora/ims/internal/IQtiImsExtListener$Stub;->asInterface(Landroid/os/IBinder;)Lorg/codeaurora/ims/internal/IQtiImsExtListener;

    move-result-object v1

    .line 90
    .local v1, "_arg0":Lorg/codeaurora/ims/internal/IQtiImsExtListener;
    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/internal/IQtiImsExt$Stub;->getPacketCount(Lorg/codeaurora/ims/internal/IQtiImsExtListener;)V

    .line 91
    const/4 v0, 0x1

    goto :goto_0

    .line 95
    .end local v1    # "_arg0":Lorg/codeaurora/ims/internal/IQtiImsExtListener;
    :sswitch_4
    const-string v0, "org.codeaurora.ims.internal.IQtiImsExt"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 97
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lorg/codeaurora/ims/internal/IQtiImsExtListener$Stub;->asInterface(Landroid/os/IBinder;)Lorg/codeaurora/ims/internal/IQtiImsExtListener;

    move-result-object v1

    .line 98
    .restart local v1    # "_arg0":Lorg/codeaurora/ims/internal/IQtiImsExtListener;
    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/internal/IQtiImsExt$Stub;->getPacketErrorCount(Lorg/codeaurora/ims/internal/IQtiImsExtListener;)V

    .line 99
    const/4 v0, 0x1

    goto :goto_0

    .line 103
    .end local v1    # "_arg0":Lorg/codeaurora/ims/internal/IQtiImsExtListener;
    :sswitch_5
    const-string v0, "org.codeaurora.ims.internal.IQtiImsExt"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 105
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 107
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 109
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lorg/codeaurora/ims/internal/IQtiImsExtListener$Stub;->asInterface(Landroid/os/IBinder;)Lorg/codeaurora/ims/internal/IQtiImsExtListener;

    move-result-object v3

    .line 110
    .restart local v3    # "_arg2":Lorg/codeaurora/ims/internal/IQtiImsExtListener;
    invoke-virtual {p0, v1, v2, v3}, Lorg/codeaurora/ims/internal/IQtiImsExt$Stub;->sendCallDeflectRequest(ILjava/lang/String;Lorg/codeaurora/ims/internal/IQtiImsExtListener;)V

    .line 111
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 115
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Lorg/codeaurora/ims/internal/IQtiImsExtListener;
    :sswitch_6
    const-string v0, "org.codeaurora.ims.internal.IQtiImsExt"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 117
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lorg/codeaurora/ims/internal/IQtiImsExtListener$Stub;->asInterface(Landroid/os/IBinder;)Lorg/codeaurora/ims/internal/IQtiImsExtListener;

    move-result-object v1

    .line 118
    .local v1, "_arg0":Lorg/codeaurora/ims/internal/IQtiImsExtListener;
    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/internal/IQtiImsExt$Stub;->registerForViceRefreshInfo(Lorg/codeaurora/ims/internal/IQtiImsExtListener;)V

    .line 119
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 123
    .end local v1    # "_arg0":Lorg/codeaurora/ims/internal/IQtiImsExtListener;
    :sswitch_7
    const-string v0, "org.codeaurora.ims.internal.IQtiImsExt"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 125
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 127
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 129
    .local v2, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 131
    .local v3, "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lorg/codeaurora/ims/internal/IQtiImsExtListener$Stub;->asInterface(Landroid/os/IBinder;)Lorg/codeaurora/ims/internal/IQtiImsExtListener;

    move-result-object v4

    .line 132
    .local v4, "_arg3":Lorg/codeaurora/ims/internal/IQtiImsExtListener;
    invoke-virtual {p0, v1, v2, v3, v4}, Lorg/codeaurora/ims/internal/IQtiImsExt$Stub;->sendCallTransferRequest(IILjava/lang/String;Lorg/codeaurora/ims/internal/IQtiImsExtListener;)V

    .line 133
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 137
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_arg3":Lorg/codeaurora/ims/internal/IQtiImsExtListener;
    :sswitch_8
    const-string v0, "org.codeaurora.ims.internal.IQtiImsExt"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 138
    invoke-virtual {p0}, Lorg/codeaurora/ims/internal/IQtiImsExt$Stub;->getImsPhoneId()I

    move-result v10

    .line 139
    .local v10, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 140
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 141
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 145
    .end local v10    # "_result":I
    :sswitch_9
    const-string v0, "org.codeaurora.ims.internal.IQtiImsExt"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 147
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lorg/codeaurora/ims/internal/IQtiImsExtListener$Stub;->asInterface(Landroid/os/IBinder;)Lorg/codeaurora/ims/internal/IQtiImsExtListener;

    move-result-object v1

    .line 148
    .local v1, "_arg0":Lorg/codeaurora/ims/internal/IQtiImsExtListener;
    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/internal/IQtiImsExt$Stub;->getHandoverConfig(Lorg/codeaurora/ims/internal/IQtiImsExtListener;)V

    .line 149
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 153
    .end local v1    # "_arg0":Lorg/codeaurora/ims/internal/IQtiImsExtListener;
    :sswitch_a
    const-string v0, "org.codeaurora.ims.internal.IQtiImsExt"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 155
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 157
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lorg/codeaurora/ims/internal/IQtiImsExtListener$Stub;->asInterface(Landroid/os/IBinder;)Lorg/codeaurora/ims/internal/IQtiImsExtListener;

    move-result-object v2

    .line 158
    .local v2, "_arg1":Lorg/codeaurora/ims/internal/IQtiImsExtListener;
    invoke-virtual {p0, v1, v2}, Lorg/codeaurora/ims/internal/IQtiImsExt$Stub;->setHandoverConfig(ILorg/codeaurora/ims/internal/IQtiImsExtListener;)V

    .line 159
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 42
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0xa -> :sswitch_a
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
