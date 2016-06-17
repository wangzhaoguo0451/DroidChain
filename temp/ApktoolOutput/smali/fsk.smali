.class final Lfsk;
.super Ljava/lang/Object;
.source "BaseFetcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lfss;

.field private synthetic b:Lfsj;


# direct methods
.method constructor <init>(Lfsj;Lfss;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 93
    iput-object p1, p0, Lfsk;->b:Lfsj;

    iput-object p2, p0, Lfsk;->a:Lfss;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 96
    iget-object v0, p0, Lfsk;->b:Lfsj;

    iget-object v0, v0, Lfsj;->c:Lfsr;

    iget-object v1, p0, Lfsk;->b:Lfsj;

    iget v1, v1, Lfsj;->a:I

    iget-object v2, p0, Lfsk;->b:Lfsj;

    iget v2, v2, Lfsj;->b:I

    iget-object v3, p0, Lfsk;->a:Lfss;

    invoke-interface {v0, v1, v2, v3}, Lfsr;->a(IILfss;)V

    .line 97
    return-void
.end method
