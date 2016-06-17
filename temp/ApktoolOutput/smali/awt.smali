.class final Lawt;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# instance fields
.field private synthetic a:Laws;


# direct methods
.method constructor <init>(Laws;)V
    .locals 0

    iput-object p1, p0, Lawt;->a:Laws;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 2

    iget-object v0, p0, Lawt;->a:Laws;

    iget-object v0, v0, Laws;->e:Lawc;

    const-string v1, "Job execution failed"

    invoke-virtual {v0, v1, p2}, Lawc;->e(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
