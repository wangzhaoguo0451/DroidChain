.class public final Leoc;
.super Ljava/lang/Object;
.source "LogTreeProcessor.java"


# instance fields
.field public a:Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Builder;

.field public b:Lcom/wandoujia/logv3/model/packages/ExtraPackage$Builder;


# direct methods
.method public constructor <init>(Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Builder;Lcom/wandoujia/logv3/model/packages/ExtraPackage$Builder;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Leoc;->a:Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Builder;

    .line 34
    iput-object p2, p0, Leoc;->b:Lcom/wandoujia/logv3/model/packages/ExtraPackage$Builder;

    .line 35
    return-void
.end method
