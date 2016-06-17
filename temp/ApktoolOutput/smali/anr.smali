.class public final Lanr;
.super Ljava/lang/Object;
.source "AnimatedDrawableFactory.java"


# instance fields
.field public final a:Lanv;

.field public final b:Laob;

.field public final c:Ljava/util/concurrent/ScheduledExecutorService;

.field public final d:Lakt;

.field public final e:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>(Lanv;Laob;Ljava/util/concurrent/ScheduledExecutorService;Landroid/content/res/Resources;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lanr;->a:Lanv;

    .line 53
    iput-object p2, p0, Lanr;->b:Laob;

    .line 54
    iput-object p3, p0, Lanr;->c:Ljava/util/concurrent/ScheduledExecutorService;

    .line 56
    new-instance v0, Lans;

    invoke-direct {v0}, Lans;-><init>()V

    iput-object v0, p0, Lanr;->d:Lakt;

    .line 63
    iput-object p4, p0, Lanr;->e:Landroid/content/res/Resources;

    .line 64
    return-void
.end method
