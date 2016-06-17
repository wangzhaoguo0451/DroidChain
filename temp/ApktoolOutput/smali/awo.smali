.class final Lawo;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Laxt;

.field private synthetic b:Lawk;


# direct methods
.method constructor <init>(Lawk;Laxt;)V
    .locals 0

    iput-object p1, p0, Lawo;->b:Lawk;

    iput-object p2, p0, Lawo;->a:Laxt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lawo;->b:Lawk;

    iget-object v0, v0, Lawk;->a:Laxe;

    iget-object v1, p0, Lawo;->a:Laxt;

    invoke-virtual {v0, v1}, Laxe;->a(Laxt;)V

    return-void
.end method
