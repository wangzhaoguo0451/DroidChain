.class public final Lbxt;
.super Ljava/lang/Object;
.source "Network.java"

# interfaces
.implements Lcom/squareup/okhttp/internal/Network;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final resolveInetAddresses(Ljava/lang/String;)[Ljava/net/InetAddress;
    .locals 2
    .parameter

    .prologue
    .line 28
    if-nez p1, :cond_0

    new-instance v0, Ljava/net/UnknownHostException;

    const-string v1, "host == null"

    invoke-direct {v0, v1}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 29
    :cond_0
    invoke-static {p1}, Ljava/net/InetAddress;->getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object v0

    return-object v0
.end method
