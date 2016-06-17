.class final Lfsl;
.super Ljava/lang/Object;
.source "BaseFetcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Ljava/util/List;

.field private synthetic b:Lfsj;


# direct methods
.method constructor <init>(Lfsj;Ljava/util/List;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 104
    iput-object p1, p0, Lfsl;->b:Lfsj;

    iput-object p2, p0, Lfsl;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .prologue
    .line 107
    iget-object v0, p0, Lfsl;->b:Lfsj;

    iget-object v0, v0, Lfsj;->c:Lfsr;

    iget-object v1, p0, Lfsl;->b:Lfsj;

    iget v1, v1, Lfsj;->a:I

    iget-object v2, p0, Lfsl;->b:Lfsj;

    iget v2, v2, Lfsj;->b:I

    new-instance v3, Lfss;

    iget-object v4, p0, Lfsl;->a:Ljava/util/List;

    invoke-direct {v3, v4}, Lfss;-><init>(Ljava/util/List;)V

    invoke-interface {v0, v1, v2, v3}, Lfsr;->a(IILfss;)V

    .line 108
    return-void
.end method
