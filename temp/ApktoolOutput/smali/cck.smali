.class public final Lcck;
.super Ljava/lang/Object;


# instance fields
.field a:I

.field b:Ljava/lang/String;

.field public c:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field d:[B


# direct methods
.method public constructor <init>(ILjava/lang/String;[B)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "[B)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcck;->a:I

    iput-object p2, p0, Lcck;->b:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcck;->c:Ljava/util/HashMap;

    iput-object p3, p0, Lcck;->d:[B

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcck;->a:I

    iput-object p1, p0, Lcck;->b:Ljava/lang/String;

    iput-object v1, p0, Lcck;->c:Ljava/util/HashMap;

    iput-object v1, p0, Lcck;->d:[B

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    iput-object v0, p0, Lcck;->d:[B

    :cond_0
    return-void
.end method
