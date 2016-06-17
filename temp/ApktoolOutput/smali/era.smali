.class public abstract Lera;
.super Ljava/lang/Object;
.source "DataLoadListenerAdapter.java"

# interfaces
.implements Lcom/wandoujia/nirvana/framework/network/page/DataLoadListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/wandoujia/nirvana/framework/network/page/DataLoadListener",
        "<TT;>;"
    }
.end annotation


# instance fields
.field a:Lcom/wandoujia/nirvana/framework/network/page/DataLoadListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/wandoujia/nirvana/framework/network/page/DataLoadListener",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/wandoujia/nirvana/framework/network/page/DataLoadListener;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/wandoujia/nirvana/framework/network/page/DataLoadListener",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lera;->a:Lcom/wandoujia/nirvana/framework/network/page/DataLoadListener;

    .line 17
    return-void
.end method


# virtual methods
.method public final a(Lcom/wandoujia/nirvana/framework/network/page/DataLoadListener$Op;)V
    .locals 1
    .parameter

    .prologue
    .line 21
    iget-object v0, p0, Lera;->a:Lcom/wandoujia/nirvana/framework/network/page/DataLoadListener;

    invoke-interface {v0, p1}, Lcom/wandoujia/nirvana/framework/network/page/DataLoadListener;->a(Lcom/wandoujia/nirvana/framework/network/page/DataLoadListener$Op;)V

    .line 25
    return-void
.end method

.method public final a(Lcom/wandoujia/nirvana/framework/network/page/DataLoadListener$Op;Leqz;)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/wandoujia/nirvana/framework/network/page/DataLoadListener$Op;",
            "Leqz",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 29
    iget-object v0, p0, Lera;->a:Lcom/wandoujia/nirvana/framework/network/page/DataLoadListener;

    invoke-interface {v0, p1, p2}, Lcom/wandoujia/nirvana/framework/network/page/DataLoadListener;->a(Lcom/wandoujia/nirvana/framework/network/page/DataLoadListener$Op;Leqz;)V

    .line 33
    return-void
.end method

.method public final a(Lcom/wandoujia/nirvana/framework/network/page/DataLoadListener$Op;Ljava/lang/Exception;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 37
    iget-object v0, p0, Lera;->a:Lcom/wandoujia/nirvana/framework/network/page/DataLoadListener;

    invoke-interface {v0, p1, p2}, Lcom/wandoujia/nirvana/framework/network/page/DataLoadListener;->a(Lcom/wandoujia/nirvana/framework/network/page/DataLoadListener$Op;Ljava/lang/Exception;)V

    .line 41
    return-void
.end method
