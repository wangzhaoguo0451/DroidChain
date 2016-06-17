.class public final Lawm;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Ljava/lang/String;

.field private synthetic b:Ljava/lang/Runnable;

.field private synthetic c:Lawk;


# direct methods
.method public constructor <init>(Lawk;Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lawm;->c:Lawk;

    iput-object p2, p0, Lawm;->a:Ljava/lang/String;

    iput-object p3, p0, Lawm;->b:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lawm;->c:Lawk;

    iget-object v0, v0, Lawk;->a:Laxe;

    iget-object v1, p0, Lawm;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Laxe;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lawm;->b:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lawm;->b:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method
