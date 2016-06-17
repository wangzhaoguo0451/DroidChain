.class final Lasv;
.super Lauf;
.source "DiskCacheProducer.java"


# instance fields
.field private synthetic a:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method constructor <init>(Ljava/util/concurrent/atomic/AtomicBoolean;)V
    .locals 0
    .parameter

    .prologue
    .line 151
    iput-object p1, p0, Lasv;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p0}, Lauf;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 154
    iget-object v0, p0, Lasv;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 155
    return-void
.end method
