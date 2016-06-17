.class public abstract Lbxp;
.super Ljava/lang/Object;
.source "ResponseBody.java"

# interfaces
.implements Ljava/io/Closeable;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a()J
.end method

.method public abstract b()Lhss;
.end method

.method public close()V
    .locals 1

    .prologue
    .line 92
    invoke-virtual {p0}, Lbxp;->b()Lhss;

    move-result-object v0

    invoke-interface {v0}, Lhss;->close()V

    .line 93
    return-void
.end method
