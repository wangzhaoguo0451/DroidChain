.class final Lape;
.super Ljava/lang/Object;
.source "CountingMemoryCache.java"

# interfaces
.implements Lakn;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lakn",
        "<TV;>;"
    }
.end annotation


# instance fields
.field private synthetic a:Lapf;

.field private synthetic b:Lapc;


# direct methods
.method constructor <init>(Lapc;Lapf;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 199
    iput-object p1, p0, Lape;->b:Lapc;

    iput-object p2, p0, Lape;->a:Lapf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    .prologue
    .line 202
    iget-object v0, p0, Lape;->b:Lapc;

    iget-object v1, p0, Lape;->a:Lapf;

    invoke-static {v0, v1}, Lapc;->a(Lapc;Lapf;)V

    .line 203
    return-void
.end method
