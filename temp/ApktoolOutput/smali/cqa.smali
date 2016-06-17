.class public final Lcqa;
.super Ljava/lang/Object;
.source "Installer.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Ljava/lang/String;

.field private synthetic b:Z

.field private synthetic c:Lcpw;

.field private synthetic d:Lcpx;


# direct methods
.method public constructor <init>(Lcpx;Ljava/lang/String;ZLcpw;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 184
    iput-object p1, p0, Lcqa;->d:Lcpx;

    iput-object p2, p0, Lcqa;->a:Ljava/lang/String;

    iput-boolean p3, p0, Lcqa;->b:Z

    iput-object p4, p0, Lcqa;->c:Lcpw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 187
    iget-object v0, p0, Lcqa;->d:Lcpx;

    iget-object v1, p0, Lcqa;->a:Ljava/lang/String;

    iget-boolean v2, p0, Lcqa;->b:Z

    iget-object v3, p0, Lcqa;->c:Lcpw;

    invoke-static {v0, v1, v2, v3}, Lcpx;->a(Lcpx;Ljava/lang/String;ZLcpw;)V

    .line 188
    return-void
.end method
