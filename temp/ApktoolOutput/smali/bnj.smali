.class final Lbnj;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lbmb;

.field private synthetic b:Lbnh;


# direct methods
.method constructor <init>(Lbnh;Lbmb;)V
    .locals 0

    iput-object p1, p0, Lbnj;->b:Lbnh;

    iput-object p2, p0, Lbnj;->a:Lbmb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lbnj;->a:Lbmb;

    iget-object v1, p0, Lbnj;->b:Lbnh;

    invoke-static {v1}, Lbnh;->a(Lbnh;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbmb;->a(Ljava/util/List;)V

    return-void
.end method
