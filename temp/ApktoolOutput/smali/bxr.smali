.class public abstract Lbxr;
.super Ljava/lang/Object;
.source "Internal.java"


# static fields
.field public static final a:Ljava/util/logging/Logger;

.field public static b:Lbxr;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const-class v0, Lbxh;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lbxr;->a:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a(Lbxh;)Lcom/squareup/okhttp/internal/InternalCache;
.end method

.method public abstract a(Lbwy;Lbyo;)Lcom/squareup/okhttp/internal/http/Transport;
.end method

.method public abstract a(Lbwy;Lcom/squareup/okhttp/Protocol;)V
.end method

.method public abstract a(Lbwy;Ljava/lang/Object;)V
.end method

.method public abstract a(Lbwz;Lbwy;)V
.end method

.method public abstract a(Lbxg;Ljava/lang/String;)V
.end method

.method public abstract a(Lbxh;Lbwy;Lbyo;Lbxj;)V
.end method

.method public abstract a(Lbwy;)Z
.end method

.method public abstract b(Lbwy;)I
.end method

.method public abstract b(Lbxh;)Lbxz;
.end method

.method public abstract b(Lbwy;Lbyo;)V
.end method

.method public abstract c(Lbxh;)Lcom/squareup/okhttp/internal/Network;
.end method

.method public abstract c(Lbwy;)Z
.end method
