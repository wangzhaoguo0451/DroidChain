.class final Lakz;
.super Ljava/lang/Object;
.source "AbstractDataSource.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lald;

.field private synthetic b:Lalb;


# direct methods
.method constructor <init>(Lalb;Lald;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 319
    iput-object p1, p0, Lakz;->b:Lalb;

    iput-object p2, p0, Lakz;->a:Lald;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 322
    iget-object v0, p0, Lakz;->a:Lald;

    iget-object v1, p0, Lakz;->b:Lalb;

    invoke-interface {v0, v1}, Lald;->c(Lalb;)V

    .line 323
    return-void
.end method
