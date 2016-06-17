.class final Laky;
.super Ljava/lang/Object;
.source "AbstractDataSource.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Z

.field private synthetic b:Lald;

.field private synthetic c:Z

.field private synthetic d:Lalb;


# direct methods
.method constructor <init>(Lalb;ZLald;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 173
    iput-object p1, p0, Laky;->d:Lalb;

    iput-boolean p2, p0, Laky;->a:Z

    iput-object p3, p0, Laky;->b:Lald;

    iput-boolean p4, p0, Laky;->c:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 176
    iget-boolean v0, p0, Laky;->a:Z

    if-eqz v0, :cond_1

    .line 177
    iget-object v0, p0, Laky;->b:Lald;

    iget-object v1, p0, Laky;->d:Lalb;

    invoke-interface {v0, v1}, Lald;->b(Lalb;)V

    .line 183
    :cond_0
    :goto_0
    return-void

    .line 178
    :cond_1
    iget-boolean v0, p0, Laky;->c:Z

    if-nez v0, :cond_0

    .line 179
    iget-object v0, p0, Laky;->b:Lald;

    iget-object v1, p0, Laky;->d:Lalb;

    invoke-interface {v0, v1}, Lald;->a(Lalb;)V

    goto :goto_0
.end method
