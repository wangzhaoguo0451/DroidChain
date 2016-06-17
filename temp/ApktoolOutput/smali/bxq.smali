.class public final Lbxq;
.super Ljava/lang/Object;
.source "Route.java"


# instance fields
.field public final a:Lbwp;

.field public final b:Ljava/net/Proxy;

.field final c:Ljava/net/InetSocketAddress;

.field final d:Lbxb;

.field final e:Z


# direct methods
.method public constructor <init>(Lbwp;Ljava/net/Proxy;Ljava/net/InetSocketAddress;Lbxb;Z)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    if-nez p1, :cond_0

    .line 52
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "address == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 54
    :cond_0
    if-nez p2, :cond_1

    .line 55
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "proxy == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 57
    :cond_1
    if-nez p3, :cond_2

    .line 58
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "inetSocketAddress == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 60
    :cond_2
    if-nez p4, :cond_3

    .line 61
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "connectionConfiguration == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 63
    :cond_3
    iput-object p1, p0, Lbxq;->a:Lbwp;

    .line 64
    iput-object p2, p0, Lbxq;->b:Ljava/net/Proxy;

    .line 65
    iput-object p3, p0, Lbxq;->c:Ljava/net/InetSocketAddress;

    .line 66
    iput-object p4, p0, Lbxq;->d:Lbxb;

    .line 67
    iput-boolean p5, p0, Lbxq;->e:Z

    .line 68
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 106
    instance-of v1, p1, Lbxq;

    if-eqz v1, :cond_0

    .line 107
    check-cast p1, Lbxq;

    .line 108
    iget-object v1, p0, Lbxq;->a:Lbwp;

    iget-object v2, p1, Lbxq;->a:Lbwp;

    invoke-virtual {v1, v2}, Lbwp;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lbxq;->b:Ljava/net/Proxy;

    iget-object v2, p1, Lbxq;->b:Ljava/net/Proxy;

    .line 109
    invoke-virtual {v1, v2}, Ljava/net/Proxy;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lbxq;->c:Ljava/net/InetSocketAddress;

    iget-object v2, p1, Lbxq;->c:Ljava/net/InetSocketAddress;

    .line 110
    invoke-virtual {v1, v2}, Ljava/net/InetSocketAddress;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lbxq;->d:Lbxb;

    iget-object v2, p1, Lbxq;->d:Lbxb;

    .line 111
    invoke-virtual {v1, v2}, Lbxb;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lbxq;->e:Z

    iget-boolean v2, p1, Lbxq;->e:Z

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    .line 114
    :cond_0
    return v0
.end method

.method public final hashCode()I
    .locals 2

    .prologue
    .line 118
    iget-object v0, p0, Lbxq;->a:Lbwp;

    invoke-virtual {v0}, Lbwp;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x20f

    .line 120
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lbxq;->b:Ljava/net/Proxy;

    invoke-virtual {v1}, Ljava/net/Proxy;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 121
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lbxq;->c:Ljava/net/InetSocketAddress;

    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 122
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lbxq;->d:Lbxb;

    invoke-virtual {v1}, Lbxb;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 123
    mul-int/lit8 v1, v0, 0x1f

    iget-boolean v0, p0, Lbxq;->e:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    add-int/2addr v0, v1

    .line 124
    return v0

    .line 123
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
