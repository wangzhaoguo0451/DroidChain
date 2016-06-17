.class public final Lcex;
.super Ljava/lang/Object;


# instance fields
.field public a:Ljava/lang/String;

.field private b:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcex;->b:I

    iput-object p1, p0, Lcex;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a(ILjava/lang/String;)V
    .locals 0

    iput-object p2, p0, Lcex;->a:Ljava/lang/String;

    iput p1, p0, Lcex;->b:I

    return-void
.end method

.method public final a()Z
    .locals 1

    iget v0, p0, Lcex;->b:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
