.class public final Lcgd;
.super Ljava/lang/Object;


# instance fields
.field a:I

.field b:Ljava/lang/String;

.field c:Ljava/lang/String;

.field d:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcgd;->a:I

    const-string v0, ""

    iput-object v0, p0, Lcgd;->b:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcgd;->c:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcgd;->d:Ljava/lang/String;

    iput p1, p0, Lcgd;->a:I

    iput-object p2, p0, Lcgd;->b:Ljava/lang/String;

    iput-object p3, p0, Lcgd;->c:Ljava/lang/String;

    iput-object p4, p0, Lcgd;->d:Ljava/lang/String;

    return-void
.end method
