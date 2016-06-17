.class public final Lccy;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Ljava/lang/String;

.field private synthetic b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lccy;->a:Ljava/lang/String;

    iput-object p2, p0, Lccy;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    new-instance v0, Lcck;

    const/4 v1, 0x1

    iget-object v2, p0, Lccy;->a:Ljava/lang/String;

    iget-object v3, p0, Lccy;->b:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcck;-><init>(ILjava/lang/String;[B)V

    new-instance v1, Lccj;

    invoke-direct {v1, v0}, Lccj;-><init>(Lcck;)V

    invoke-virtual {v1}, Lccj;->a()I

    return-void
.end method
