.class final Lauq;
.super Laum;
.source "ThreadHandoffProducer.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Laum",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private synthetic a:Laug;

.field private synthetic b:Ljava/lang/String;

.field private synthetic c:Lask;

.field private synthetic d:Laue;

.field private synthetic e:Laup;


# direct methods
.method constructor <init>(Laup;Lask;Laug;Ljava/lang/String;Ljava/lang/String;Laug;Ljava/lang/String;Lask;Laue;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 41
    iput-object p1, p0, Lauq;->e:Laup;

    iput-object p6, p0, Lauq;->a:Laug;

    iput-object p7, p0, Lauq;->b:Ljava/lang/String;

    iput-object p8, p0, Lauq;->c:Lask;

    iput-object p9, p0, Lauq;->d:Laue;

    invoke-direct {p0, p2, p3, p4, p5}, Laum;-><init>(Lask;Laug;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected final a(Ljava/lang/Object;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 44
    iget-object v0, p0, Lauq;->a:Laug;

    iget-object v1, p0, Lauq;->b:Ljava/lang/String;

    const-string v2, "BackgroundThreadHandoffProducer"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Laug;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 45
    iget-object v0, p0, Lauq;->e:Laup;

    iget-object v0, v0, Laup;->a:Laud;

    iget-object v1, p0, Lauq;->c:Lask;

    iget-object v2, p0, Lauq;->d:Laue;

    invoke-interface {v0, v1, v2}, Laud;->a(Lask;Laue;)V

    .line 46
    return-void
.end method

.method protected final b(Ljava/lang/Object;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 49
    return-void
.end method

.method protected final c()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 53
    const/4 v0, 0x0

    return-object v0
.end method
