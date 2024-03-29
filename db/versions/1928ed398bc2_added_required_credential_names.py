"""Added required credential names

Revision ID: 1928ed398bc2
Revises: 68e836bbcaa0
Create Date: 2024-02-23 13:16:24.193942

"""
from alembic import op
import sqlalchemy as sa


# revision identifiers, used by Alembic.
revision = '1928ed398bc2'
down_revision = '68e836bbcaa0'
branch_labels = None
depends_on = None


def upgrade() -> None:
    # ### commands auto generated by Alembic - please adjust! ###
    op.add_column('jb_bot', sa.Column('required_credentials', sa.ARRAY(sa.String()), nullable=True))
    # ### end Alembic commands ###


def downgrade() -> None:
    # ### commands auto generated by Alembic - please adjust! ###
    op.drop_column('jb_bot', 'required_credentials')
    # ### end Alembic commands ###
