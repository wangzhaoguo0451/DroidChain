.class final Ldaw;
.super Ldar;
.source "ImageManager.java"


# instance fields
.field private final a:Ljava/lang/String;

.field private b:Lahq;

.field private synthetic f:Ldaa;


# direct methods
.method constructor <init>(Ldaa;Ljava/lang/String;IILdat;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 757
    iput-object p1, p0, Ldaw;->f:Ldaa;

    .line 758
    invoke-direct {p0, p5, p3, p4}, Ldar;-><init>(Ldat;II)V

    .line 759
    iput-object p2, p0, Ldaw;->a:Ljava/lang/String;

    .line 760
    return-void
.end method


# virtual methods
.method final a()V
    .locals 5

    .prologue
    .line 764
    new-instance v0, Ldax;

    invoke-direct {v0, p0}, Ldax;-><init>(Ldaw;)V

    .line 780
    iget-object v1, p0, Ldaw;->f:Ldaa;

    iget-object v1, v1, Ldaa;->c:Lahk;

    iget-object v2, p0, Ldaw;->a:Ljava/lang/String;

    iget v3, p0, Ldaw;->c:I

    iget v4, p0, Ldaw;->d:I

    invoke-virtual {v1, v2, v0, v3, v4}, Lahk;->a(Ljava/lang/String;Lahr;II)Lahq;

    move-result-object v0

    iput-object v0, p0, Ldaw;->b:Lahq;

    .line 782
    return-void
.end method

.method final b()V
    .locals 1

    .prologue
    .line 786
    iget-object v0, p0, Ldaw;->b:Lahq;

    if-eqz v0, :cond_0

    .line 787
    iget-object v0, p0, Ldaw;->b:Lahq;

    invoke-virtual {v0}, Lahq;->a()V

    .line 789
    :cond_0
    return-void
.end method
