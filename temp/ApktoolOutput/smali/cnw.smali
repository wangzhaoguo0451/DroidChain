.class final Lcnw;
.super Ljava/lang/Thread;
.source "AccountDialogUtils.java"


# instance fields
.field private synthetic a:Lcnv;


# direct methods
.method constructor <init>(Lcnv;)V
    .locals 0
    .parameter

    .prologue
    .line 120
    iput-object p1, p0, Lcnw;->a:Lcnv;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 123
    new-instance v0, Lcii;

    invoke-direct {v0}, Lcii;-><init>()V

    iget-object v1, p0, Lcnw;->a:Lcnv;

    iget-object v1, v1, Lcnv;->a:Ljava/lang/String;

    iget-object v2, p0, Lcnw;->a:Lcnv;

    iget-object v2, v2, Lcnv;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcii;->a(Ljava/lang/String;Ljava/lang/String;)Z

    .line 124
    return-void
.end method
