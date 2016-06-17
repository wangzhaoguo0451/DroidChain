.class public final Lbwm;
.super Ljava/lang/Object;
.source "RefWatcher.java"


# static fields
.field public static final a:Lbwm;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    .line 36
    new-instance v0, Lbwm;

    new-instance v1, Lbwn;

    invoke-direct {v1}, Lbwn;-><init>()V

    new-instance v2, Lbwo;

    invoke-direct {v2}, Lbwo;-><init>()V

    sget-object v3, Lbwi;->a:Lbwi;

    new-instance v4, Lbwl;

    invoke-direct {v4}, Lbwl;-><init>()V

    new-instance v5, Lbwk;

    invoke-direct {v5}, Lbwk;-><init>()V

    invoke-direct/range {v0 .. v5}, Lbwm;-><init>(Ljava/util/concurrent/Executor;Lbwg;Lbwi;Lbwl;Lbwk;)V

    sput-object v0, Lbwm;->a:Lbwm;

    return-void
.end method

.method private constructor <init>(Ljava/util/concurrent/Executor;Lbwg;Lbwi;Lbwl;Lbwk;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    const-string v0, "watchExecutor"

    invoke-static {p1, v0}, Ld;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 64
    const-string v0, "debuggerControl"

    invoke-static {p2, v0}, Ld;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 65
    const-string v0, "gcTrigger"

    invoke-static {p3, v0}, Ld;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 66
    const-string v0, "heapDumper"

    invoke-static {p4, v0}, Ld;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 67
    const-string v0, "heapdumpListener"

    invoke-static {p5, v0}, Ld;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 68
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    .line 69
    new-instance v0, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    .line 70
    return-void
.end method
