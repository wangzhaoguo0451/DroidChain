.class public final Lenp;
.super Ljava/lang/Object;
.source "LogHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Leno;


# direct methods
.method public constructor <init>(Leno;)V
    .locals 0
    .parameter

    .prologue
    .line 56
    iput-object p1, p0, Lenp;->a:Leno;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 59
    iget-object v0, p0, Lenp;->a:Leno;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Leno;->a(Leno;Lcom/wandoujia/logv3/model/packages/ViewLogPackage;)Lcom/wandoujia/logv3/model/packages/ViewLogPackage;

    .line 60
    return-void
.end method
