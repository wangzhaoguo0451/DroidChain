.class final Lady;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lafs;

.field private final synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(Lafs;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lady;->a:Lafs;

    iput-object p2, p0, Lady;->b:Ljava/lang/String;

    .line 302
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 305
    iget-object v0, p0, Lady;->a:Lafs;

    invoke-static {v0}, Lafs;->c(Lafs;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 306
    iget-object v0, p0, Lady;->a:Lafs;

    invoke-static {v0}, Lafs;->c(Lafs;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lady;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 307
    return-void
.end method
