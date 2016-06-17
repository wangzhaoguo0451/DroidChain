.class final Lawn;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lavy;

.field private synthetic b:Lawk;


# direct methods
.method constructor <init>(Lawk;Lavy;)V
    .locals 0

    iput-object p1, p0, Lawn;->b:Lawk;

    iput-object p2, p0, Lawn;->a:Lavy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lawn;->b:Lawk;

    iget-object v0, v0, Lawk;->a:Laxe;

    iget-object v1, p0, Lawn;->a:Lavy;

    invoke-virtual {v0, v1}, Laxe;->a(Lavy;)V

    return-void
.end method
