.class final Lfbl;
.super Ljava/lang/Object;
.source "CampaignPlugin.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:[Ljava/lang/String;

.field private synthetic b:Ljava/lang/String;

.field private synthetic c:Lfbe;


# direct methods
.method constructor <init>(Lfbe;[Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 465
    iput-object p1, p0, Lfbl;->c:Lfbe;

    iput-object p2, p0, Lfbl;->a:[Ljava/lang/String;

    iput-object p3, p0, Lfbl;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 468
    iget-object v0, p0, Lfbl;->c:Lfbe;

    iget-object v1, p0, Lfbl;->a:[Ljava/lang/String;

    invoke-virtual {v0, v1}, Lfbe;->getAppInfos([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 469
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "javascript:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lfbl;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 474
    iget-object v1, p0, Lfbl;->c:Lfbe;

    invoke-static {v1}, Lfbe;->a(Lfbe;)Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 475
    return-void
.end method
