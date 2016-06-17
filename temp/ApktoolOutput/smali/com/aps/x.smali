.class final Lcom/aps/x;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field protected a:S

.field protected b:I

.field protected c:Lcom/aps/z;

.field protected d:Lcom/aps/v;

.field protected e:Lcom/aps/ai;

.field protected f:Lcom/aps/ae;

.field protected g:Lcom/aps/ac;


# direct methods
.method constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-short v1, p0, Lcom/aps/x;->a:S

    iput v1, p0, Lcom/aps/x;->b:I

    iput-object v0, p0, Lcom/aps/x;->c:Lcom/aps/z;

    iput-object v0, p0, Lcom/aps/x;->d:Lcom/aps/v;

    iput-object v0, p0, Lcom/aps/x;->e:Lcom/aps/ai;

    iput-object v0, p0, Lcom/aps/x;->f:Lcom/aps/ae;

    iput-object v0, p0, Lcom/aps/x;->g:Lcom/aps/ac;

    return-void
.end method
