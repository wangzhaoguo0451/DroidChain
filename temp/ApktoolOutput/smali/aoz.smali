.class public final Laoz;
.super Ljava/lang/Object;
.source "BufferedDiskCache.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Laip;

.field private synthetic b:Laqx;

.field private synthetic c:Laox;


# direct methods
.method public constructor <init>(Laox;Laip;Laqx;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 159
    iput-object p1, p0, Laoz;->c:Laox;

    iput-object p2, p0, Laoz;->a:Laip;

    iput-object p3, p0, Laoz;->b:Laqx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 163
    :try_start_0
    iget-object v0, p0, Laoz;->c:Laox;

    iget-object v1, p0, Laoz;->a:Laip;

    iget-object v2, p0, Laoz;->b:Laqx;

    invoke-static {v0, v1, v2}, Laox;->a(Laox;Laip;Laqx;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 165
    iget-object v0, p0, Laoz;->c:Laox;

    invoke-static {v0}, Laox;->a(Laox;)Lapq;

    move-result-object v0

    iget-object v1, p0, Laoz;->a:Laip;

    iget-object v2, p0, Laoz;->b:Laqx;

    invoke-virtual {v0, v1, v2}, Lapq;->b(Laip;Laqx;)Z

    .line 166
    iget-object v0, p0, Laoz;->b:Laqx;

    invoke-static {v0}, Laqx;->d(Laqx;)V

    .line 167
    return-void

    .line 165
    :catchall_0
    move-exception v0

    iget-object v1, p0, Laoz;->c:Laox;

    invoke-static {v1}, Laox;->a(Laox;)Lapq;

    move-result-object v1

    iget-object v2, p0, Laoz;->a:Laip;

    iget-object v3, p0, Laoz;->b:Laqx;

    invoke-virtual {v1, v2, v3}, Lapq;->b(Laip;Laqx;)Z

    .line 166
    iget-object v1, p0, Laoz;->b:Laqx;

    invoke-static {v1}, Laqx;->d(Laqx;)V

    throw v0
.end method
