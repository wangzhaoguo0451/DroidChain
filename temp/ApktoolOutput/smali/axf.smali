.class final Laxf;
.super Laxp;


# instance fields
.field private synthetic d:Laxe;


# direct methods
.method constructor <init>(Laxe;Laws;)V
    .locals 0

    iput-object p1, p0, Laxf;->d:Laxe;

    invoke-direct {p0, p2}, Laxp;-><init>(Laws;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Laxf;->d:Laxe;

    new-instance v1, Laxi;

    invoke-direct {v1, v0}, Laxi;-><init>(Laxe;)V

    invoke-virtual {v0, v1}, Laxe;->a(Laxt;)V

    return-void
.end method
