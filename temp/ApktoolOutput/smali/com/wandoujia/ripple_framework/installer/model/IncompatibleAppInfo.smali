.class public Lcom/wandoujia/ripple_framework/installer/model/IncompatibleAppInfo;
.super Ljava/lang/Object;
.source "IncompatibleAppInfo.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public final incompatibleDetail:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final packageName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lhhf;)V
    .locals 1
    .parameter

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iget-object v0, p1, Lhhf;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/ripple_framework/installer/model/IncompatibleAppInfo;->packageName:Ljava/lang/String;

    .line 18
    iget-object v0, p1, Lhhf;->b:Ljava/util/List;

    iput-object v0, p0, Lcom/wandoujia/ripple_framework/installer/model/IncompatibleAppInfo;->incompatibleDetail:Ljava/util/List;

    .line 19
    return-void
.end method

.method public static newBuilder()Lhhf;
    .locals 1

    .prologue
    .line 22
    new-instance v0, Lhhf;

    invoke-direct {v0}, Lhhf;-><init>()V

    return-object v0
.end method
